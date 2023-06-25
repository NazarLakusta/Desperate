package car4dream.config.details;

import car4dream.model.UserEntity;
import car4dream.model.enums.StatusUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.User;
import java.util.Collection;
import java.util.List;


public class UserDetailsImpl implements UserDetails {

    private final String username;
    private final String password;
    private final List<SimpleGrantedAuthority> authorities;
    private final boolean isActive;

    public UserDetailsImpl(String username, String password, List<SimpleGrantedAuthority> authorities, boolean isActive) {
        this.username = username;
        this.password = password;
        this.authorities = authorities;
        this.isActive = isActive;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return isActive;
    }

    @Override
    public boolean isAccountNonLocked() {
        return isActive;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return isActive;
    }

    @Override
    public boolean isEnabled() {
        return isActive;
    }
    public static UserDetails fromUser(UserEntity user){
        return new User(
                user.getEmail(),
                user.getPassword(),
                user.getStatus().equals(StatusUser.ACTIVE),
                user.getStatus().equals(StatusUser.ACTIVE),
                user.getStatus().equals(StatusUser.ACTIVE),
                user.getStatus().equals(StatusUser.ACTIVE),
                user.getRole().getAuthorities()
        );
    }


}