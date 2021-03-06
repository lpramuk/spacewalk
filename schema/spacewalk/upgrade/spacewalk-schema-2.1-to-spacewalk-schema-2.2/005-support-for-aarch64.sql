
insert into rhnChannelArch (id, label, name, arch_type_id) values
        (sequence_nextval('rhn_channel_arch_id_seq'), 'channel-aarch64', 'AArch64', lookup_arch_type('rpm'));

insert into rhnPackageArch (id, label, name, arch_type_id) values
        (sequence_nextval('rhn_package_arch_id_seq'), 'aarch64', 'AArch64', lookup_arch_type('rpm'));

insert into rhnChannelPackageArchCompat (channel_arch_id, package_arch_id)
        values (LOOKUP_CHANNEL_ARCH('channel-aarch64'), LOOKUP_PACKAGE_ARCH('aarch64'));
insert into rhnChannelPackageArchCompat (channel_arch_id, package_arch_id)
        values (LOOKUP_CHANNEL_ARCH('channel-aarch64'), LOOKUP_PACKAGE_ARCH('noarch'));

insert into rhnServerArch (id, label, name, arch_type_id) values
(sequence_nextval('rhn_server_arch_id_seq'), 'aarch64-redhat-linux', 'aarch64', lookup_arch_type('rpm'));

insert into rhnPackageUpgradeArchCompat (package_arch_id, package_upgrade_arch_id, created, modified) values (LOOKUP_PACKAGE_ARCH('noarch'), LOOKUP_PACKAGE_ARCH('aarch64'), current_timestamp, current_timestamp);
insert into rhnPackageUpgradeArchCompat (package_arch_id, package_upgrade_arch_id, created, modified) values (LOOKUP_PACKAGE_ARCH('aarch64'), LOOKUP_PACKAGE_ARCH('aarch64'), current_timestamp, current_timestamp);
insert into rhnPackageUpgradeArchCompat (package_arch_id, package_upgrade_arch_id, created, modified) values (LOOKUP_PACKAGE_ARCH('aarch64'), LOOKUP_PACKAGE_ARCH('noarch'), current_timestamp, current_timestamp);

insert into rhnServerChannelArchCompat (server_arch_id, channel_arch_id) values
(LOOKUP_SERVER_ARCH('aarch64-redhat-linux'), LOOKUP_CHANNEL_ARCH('channel-aarch64'));

insert into rhnServerPackageArchCompat
(server_arch_id, package_arch_id, preference) values
(LOOKUP_SERVER_ARCH('aarch64-redhat-linux'), LOOKUP_PACKAGE_ARCH('aarch64'), 0);


insert into rhnServerServerGroupArchCompat ( server_arch_id, server_group_type )
        values (lookup_server_arch('aarch64-redhat-linux'),
            lookup_sg_type('sw_mgr_entitled'));
insert into rhnServerServerGroupArchCompat ( server_arch_id, server_group_type )
        values (lookup_server_arch('aarch64-redhat-linux'),
            lookup_sg_type('enterprise_entitled'));
insert into rhnServerServerGroupArchCompat ( server_arch_id, server_group_type )
        values (lookup_server_arch('aarch64-redhat-linux'),
            lookup_sg_type('provisioning_entitled'));
insert into rhnServerServerGroupArchCompat ( server_arch_id, server_group_type )
        values (lookup_server_arch('aarch64-redhat-linux'),
            lookup_sg_type('monitoring_entitled'));
insert into rhnServerServerGroupArchCompat ( server_arch_id, server_group_type )
        values (lookup_server_arch('aarch64-redhat-linux'),
            lookup_sg_type('virtualization_host'));

insert into rhnCpuArch (id, label, name) values
(sequence_nextval('rhn_cpu_arch_id_seq'), 'aarch64', 'AArch64');
