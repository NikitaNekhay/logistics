package by.chernyakovich.banquetproject.service;

import by.chernyakovich.banquetproject.model.Host;
import by.chernyakovich.banquetproject.repository.HostRepository;
import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class HostService {

    private final HostRepository hostRepository;
    private final ImageService imageService;

    public List<Host> findAll() {
        return hostRepository.findAll();
    }


    public void create(Host host, MultipartFile image) throws IOException {
        host.setImage(imageService.toImageEntity(image));
        hostRepository.save(host);
    }

    public void edit(Long hostId, Host newHost, MultipartFile image) throws IOException {
        Host existingHost = hostRepository.findById(hostId)
                .orElseThrow(() -> new EntityNotFoundException("Host not found"));

        if (!newHost.getName().isEmpty()) {
            existingHost.setName(newHost.getName());
        }

        if (!newHost.getDescription().isEmpty()) {
            existingHost.setDescription(newHost.getDescription());
        }

        if (newHost.getPrice() != 0) {
            existingHost.setPrice(newHost.getPrice());
        }

        if (!image.isEmpty()) {
            existingHost.setImage(imageService.toImageEntity(image));
        }

        hostRepository.save(existingHost);
    }

    public Host findById(Long hostId) {
        return hostRepository.findById(hostId)
                .orElseThrow(() -> new EntityNotFoundException("Host not found"));
    }

    @Transactional
    public void deleteHostAndBookings(Long hostId) {
        Host host = hostRepository.findById(hostId)
                .orElseThrow(() -> new EntityNotFoundException("Host not found"));
//        host.getBookings().clear();
        hostRepository.delete(host);
    }
}
