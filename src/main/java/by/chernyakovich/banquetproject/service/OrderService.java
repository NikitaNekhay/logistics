package by.chernyakovich.banquetproject.service;


import by.chernyakovich.banquetproject.model.*;
import by.chernyakovich.banquetproject.repository.CompanyRepository;
import by.chernyakovich.banquetproject.repository.ReviewRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final CompanyRepository companyRepository;


    public List<CompanyOffer> calculateOffers(ClientRequest request) {
        List<Company> activeCompanies = companyRepository.findAll(); // изменить на поиск активных компаний
        List<CompanyOffer> totalOffers = new ArrayList<>();

        activeCompanies.forEach(company -> {
            CompanyOffer offer = new CompanyOffer();
            offer.setCompany(company);
            offer.setId(company.getId());
            offer.setTotal_price(request.calculate(Math.random())); // должны перечислить коэффиценты компании на разное
            totalOffers.add(offer);
        });

        return totalOffers;
    }
}
