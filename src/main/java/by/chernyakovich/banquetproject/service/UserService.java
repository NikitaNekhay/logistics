package by.chernyakovich.banquetproject.service;


import by.chernyakovich.banquetproject.model.Image;
import by.chernyakovich.banquetproject.model.Person;
import by.chernyakovich.banquetproject.model.Role;
import by.chernyakovich.banquetproject.model.User;
import by.chernyakovich.banquetproject.repository.ImageRepository;
import by.chernyakovich.banquetproject.repository.UserRepository;
import jakarta.mail.MessagingException;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

    private final UserRepository userRepository;

    private final ImageRepository imageRepository;

    private final PasswordEncoder passwordEncoder;



    public User getUserById(Long userId) {
        return userRepository.findById(userId).orElse(null);
    }

    public List<User> getUsers() {
        return userRepository.findAll();
    }


    public boolean createUser(User user, String name, String surname, String phoneNumber) {
        if (userRepository.findByEmail(user.getEmail()) != null) {
            return false;
        }

        user.setActive(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_ADMIN);

        Person person = new Person();
        person.setName(name);
        person.setSurname(surname);
        person.setPhoneNumber(phoneNumber);
        user.setPerson(person);
        userRepository.save(user);

        log.info("Saving new user with email: {}", user.getEmail());
        return true;
    }


    public boolean updateUserProfile(Long userId, User user, String name, String surname, String phoneNumber) throws IOException {
        Optional<User> optionalUser = userRepository.findById(userId);

        if (optionalUser.isPresent()) {
            User existingUser = optionalUser.get();

            existingUser.setEmail(user.getEmail().isEmpty() ? existingUser.getEmail() : user.getEmail());
            existingUser.setPassword(user.getPassword().isEmpty() ? existingUser.getPassword() : passwordEncoder.encode(user.getPassword()));

            if (name.isEmpty()) {
                System.err.println("Передано пустое имя");
            } else {
                existingUser.getPerson().setName(name);
                System.err.println("Поставлено новое имя");
            }

            if (surname.isEmpty()) {
                System.err.println("Передано пустая фамилия");
            } else {
                existingUser.getPerson().setSurname(surname);
                System.err.println("Поставлена новая фамилия");
            }

            if (phoneNumber.isEmpty()) {
                System.err.println("Передан пустой телефон");
            } else {
                existingUser.getPerson().setPhoneNumber(phoneNumber);
                System.err.println("Поставлен новый телефон");
            }

            userRepository.save(existingUser);
            log.info("Updating user with email: {}", existingUser.getEmail());

            return true;
        } else {
            return false;
        }
    }


    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }


    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }


    public void banUser(Long userId) {
        User user = userRepository.getUserById(userId);
        System.err.println("Бан пользователя - email - {}" + user.getEmail());
        user.setActive(false);
        userRepository.save(user);
        log.info("Ban user with email = {}", user.getEmail());


    }

    public void unBanUser(Long userId) {
        User user = userRepository.getUserById(userId);
        System.err.println("Разбан пользователя - email - {}" + user.getEmail());
        user.setActive(true);
        userRepository.save(user);
        log.info("Ban user with email = {}", user.getEmail());

    }

    public void changeUserRoles(User user, Map<String, String> form) {
        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());
        user.getRoles().clear();
        for (String key: form.keySet()){
            if(roles.contains(key)){
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepository.save(user);
    }

    public User findById(Long userId) {
        return userRepository.findById(userId).orElseThrow(() -> new EntityNotFoundException("User not found"));
    }
}