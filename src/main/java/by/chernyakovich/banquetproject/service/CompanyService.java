package by.chernyakovich.banquetproject.service;


import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.repository.CompanyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CompanyService {

    private final CompanyRepository companyRepository;



    // можно возвращать boolean, чтобы добавить уведы о статусе создания
    public void createCompany(Company company, User userByPrincipal) {

    }

    public Company getById(Long companyId) {
        return companyRepository.findById(companyId).orElseThrow(() -> new RuntimeException("Company not found"));
    }

    public void editCompany(Company company, Long companyId, User userByPrincipal) {
        // checkOwner надо
        Company oldCompany = companyRepository.findById(companyId).orElseThrow(() -> new RuntimeException("Company not found"));
        oldCompany.setCurrency_auto(company.getCurrency_auto());
        oldCompany.setCurrency_air(company.getCurrency_air());
        oldCompany.setCurrency_fragile(company.getCurrency_fragile());
        oldCompany.setCurrency_train(company.getCurrency_train());
        oldCompany.setCurrency_ship(company.getCurrency_ship());
        oldCompany.setCurrency_auto(company.getCurrency_auto());
        oldCompany.setName(company.getName());
        companyRepository.save(oldCompany);

        // надо добавить проверки на пустые значения
    }

    public void deleteCompany(Long companyId, User userByPrincipal) {
        // проверку на owner
        companyRepository.deleteById(companyId);
    }
}
