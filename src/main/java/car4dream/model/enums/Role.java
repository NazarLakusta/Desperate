package car4dream.model.enums;

import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.List;
import java.util.stream.Collectors;

public enum Role {
	GUEST(List.of(Permission.USER_GUEST)),
	USER(List.of(Permission.USER_READ, Permission.USER_GUEST)),
	ADMIN(List.of(Permission.USER_GUEST, Permission.USER_READ, Permission.USER_WRITE));

	private final List<Permission> permissionSet;

	Role(List<Permission> permissionSet) {
		this.permissionSet = permissionSet;
	}

	public List<Permission> getPermissionSet() {
		return permissionSet;
	}

	public List<SimpleGrantedAuthority> getAuthorities() {
		return getPermissionSet().stream()
				.map(permission -> new SimpleGrantedAuthority(permission.getPermission())).collect(Collectors.toList());
	}

}
