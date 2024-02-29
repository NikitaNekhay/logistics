package by.chernyakovich.banquetproject.model;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    ROLE_USER, ROLE_ADMIN, ROLE_COMPANY;

    @Override
    public String getAuthority() {
        return name();
    }
}