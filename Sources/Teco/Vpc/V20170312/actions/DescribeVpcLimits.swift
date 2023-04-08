//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vpc {
    /// DescribeVpcLimits请求参数结构体
    public struct DescribeVpcLimitsRequest: TCRequestModel {
        /// 配额名称。每次最大查询100个配额类型。
        public let limitTypes: [String]

        public init(limitTypes: [String]) {
            self.limitTypes = limitTypes
        }

        enum CodingKeys: String, CodingKey {
            case limitTypes = "LimitTypes"
        }
    }

    /// DescribeVpcLimits返回参数结构体
    public struct DescribeVpcLimitsResponse: TCResponseModel {
        /// 私有网络配额
        public let vpcLimitSet: [VpcLimit]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcLimitSet = "VpcLimitSet"
            case requestId = "RequestId"
        }
    }

    /// 获取私有网络配额
    ///
    /// 本接口（DescribeVpcLimits）用于获取私有网络配额，部分私有网络的配额有地域属性。
    /// LimitTypes取值范围：
    /// * appid-max-vpcs （每个开发商每个地域可创建的VPC数）。
    /// * vpc-max-subnets（每个VPC可创建的子网数）。
    /// * vpc-max-route-tables（每个VPC可创建的路由表数）。
    /// * route-table-max-policies（每个路由表可添加的策略数）。
    /// * vpc-max-vpn-gateways（每个VPC可创建的VPN网关数）。
    /// * appid-max-custom-gateways（每个开发商可创建的对端网关数）。
    /// * appid-max-vpn-connections（每个开发商可创建的VPN通道数）。
    /// * custom-gateway-max-vpn-connections（每个对端网关可创建的VPN通道数）。
    /// * vpn-gateway-max-custom-gateways（每个VPNGW可以创建的通道数）。
    /// * vpc-max-network-acls（每个VPC可创建的网络ACL数）。
    /// * network-acl-max-inbound-policies（每个网络ACL可添加的入站规则数）。
    /// * network-acl-max-outbound-policies（每个网络ACL可添加的出站规则数）。
    /// * vpc-max-vpcpeers（每个VPC可创建的对等连接数）。
    /// * vpc-max-available-vpcpeers（每个VPC可创建的有效对等连接数）。
    /// * vpc-max-basic-network-interconnections（每个VPC可创建的基础网络云主机与VPC互通数）。
    /// * direct-connection-max-snats（每个专线网关可创建的SNAT数）。
    /// * direct-connection-max-dnats（每个专线网关可创建的DNAT数）。
    /// * direct-connection-max-snapts（每个专线网关可创建的SNAPT数）。
    /// * direct-connection-max-dnapts（每个专线网关可创建的DNAPT数）。
    /// * vpc-max-nat-gateways（每个VPC可创建的NAT网关数）。
    /// * nat-gateway-max-eips（每个NAT可以购买的外网IP数量）。
    /// * vpc-max-enis（每个VPC可创建弹性网卡数）。
    /// * vpc-max-havips（每个VPC可创建HAVIP数）。
    /// * eni-max-private-ips（每个ENI可以绑定的内网IP数（ENI未绑定子机））。
    /// * nat-gateway-max-dnapts（每个NAT网关可创建的DNAPT数）。
    /// * vpc-max-ipv6s（每个VPC可分配的IPv6地址数）。
    /// * eni-max-ipv6s（每个ENI可分配的IPv6地址数）。
    /// * vpc-max-assistant_cidrs（每个VPC可分配的辅助CIDR数）。
    /// * appid-max-end-point-services （每个开发商每个地域可创建的终端节点服务个数）。
    /// * appid-max-end-point-service-white-lists （每个开发商每个地域可创建的终端节点服务白名单个数）。
    @inlinable
    public func describeVpcLimits(_ input: DescribeVpcLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcLimitsResponse> {
        self.client.execute(action: "DescribeVpcLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有网络配额
    ///
    /// 本接口（DescribeVpcLimits）用于获取私有网络配额，部分私有网络的配额有地域属性。
    /// LimitTypes取值范围：
    /// * appid-max-vpcs （每个开发商每个地域可创建的VPC数）。
    /// * vpc-max-subnets（每个VPC可创建的子网数）。
    /// * vpc-max-route-tables（每个VPC可创建的路由表数）。
    /// * route-table-max-policies（每个路由表可添加的策略数）。
    /// * vpc-max-vpn-gateways（每个VPC可创建的VPN网关数）。
    /// * appid-max-custom-gateways（每个开发商可创建的对端网关数）。
    /// * appid-max-vpn-connections（每个开发商可创建的VPN通道数）。
    /// * custom-gateway-max-vpn-connections（每个对端网关可创建的VPN通道数）。
    /// * vpn-gateway-max-custom-gateways（每个VPNGW可以创建的通道数）。
    /// * vpc-max-network-acls（每个VPC可创建的网络ACL数）。
    /// * network-acl-max-inbound-policies（每个网络ACL可添加的入站规则数）。
    /// * network-acl-max-outbound-policies（每个网络ACL可添加的出站规则数）。
    /// * vpc-max-vpcpeers（每个VPC可创建的对等连接数）。
    /// * vpc-max-available-vpcpeers（每个VPC可创建的有效对等连接数）。
    /// * vpc-max-basic-network-interconnections（每个VPC可创建的基础网络云主机与VPC互通数）。
    /// * direct-connection-max-snats（每个专线网关可创建的SNAT数）。
    /// * direct-connection-max-dnats（每个专线网关可创建的DNAT数）。
    /// * direct-connection-max-snapts（每个专线网关可创建的SNAPT数）。
    /// * direct-connection-max-dnapts（每个专线网关可创建的DNAPT数）。
    /// * vpc-max-nat-gateways（每个VPC可创建的NAT网关数）。
    /// * nat-gateway-max-eips（每个NAT可以购买的外网IP数量）。
    /// * vpc-max-enis（每个VPC可创建弹性网卡数）。
    /// * vpc-max-havips（每个VPC可创建HAVIP数）。
    /// * eni-max-private-ips（每个ENI可以绑定的内网IP数（ENI未绑定子机））。
    /// * nat-gateway-max-dnapts（每个NAT网关可创建的DNAPT数）。
    /// * vpc-max-ipv6s（每个VPC可分配的IPv6地址数）。
    /// * eni-max-ipv6s（每个ENI可分配的IPv6地址数）。
    /// * vpc-max-assistant_cidrs（每个VPC可分配的辅助CIDR数）。
    /// * appid-max-end-point-services （每个开发商每个地域可创建的终端节点服务个数）。
    /// * appid-max-end-point-service-white-lists （每个开发商每个地域可创建的终端节点服务白名单个数）。
    @inlinable
    public func describeVpcLimits(_ input: DescribeVpcLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcLimitsResponse {
        try await self.client.execute(action: "DescribeVpcLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有网络配额
    ///
    /// 本接口（DescribeVpcLimits）用于获取私有网络配额，部分私有网络的配额有地域属性。
    /// LimitTypes取值范围：
    /// * appid-max-vpcs （每个开发商每个地域可创建的VPC数）。
    /// * vpc-max-subnets（每个VPC可创建的子网数）。
    /// * vpc-max-route-tables（每个VPC可创建的路由表数）。
    /// * route-table-max-policies（每个路由表可添加的策略数）。
    /// * vpc-max-vpn-gateways（每个VPC可创建的VPN网关数）。
    /// * appid-max-custom-gateways（每个开发商可创建的对端网关数）。
    /// * appid-max-vpn-connections（每个开发商可创建的VPN通道数）。
    /// * custom-gateway-max-vpn-connections（每个对端网关可创建的VPN通道数）。
    /// * vpn-gateway-max-custom-gateways（每个VPNGW可以创建的通道数）。
    /// * vpc-max-network-acls（每个VPC可创建的网络ACL数）。
    /// * network-acl-max-inbound-policies（每个网络ACL可添加的入站规则数）。
    /// * network-acl-max-outbound-policies（每个网络ACL可添加的出站规则数）。
    /// * vpc-max-vpcpeers（每个VPC可创建的对等连接数）。
    /// * vpc-max-available-vpcpeers（每个VPC可创建的有效对等连接数）。
    /// * vpc-max-basic-network-interconnections（每个VPC可创建的基础网络云主机与VPC互通数）。
    /// * direct-connection-max-snats（每个专线网关可创建的SNAT数）。
    /// * direct-connection-max-dnats（每个专线网关可创建的DNAT数）。
    /// * direct-connection-max-snapts（每个专线网关可创建的SNAPT数）。
    /// * direct-connection-max-dnapts（每个专线网关可创建的DNAPT数）。
    /// * vpc-max-nat-gateways（每个VPC可创建的NAT网关数）。
    /// * nat-gateway-max-eips（每个NAT可以购买的外网IP数量）。
    /// * vpc-max-enis（每个VPC可创建弹性网卡数）。
    /// * vpc-max-havips（每个VPC可创建HAVIP数）。
    /// * eni-max-private-ips（每个ENI可以绑定的内网IP数（ENI未绑定子机））。
    /// * nat-gateway-max-dnapts（每个NAT网关可创建的DNAPT数）。
    /// * vpc-max-ipv6s（每个VPC可分配的IPv6地址数）。
    /// * eni-max-ipv6s（每个ENI可分配的IPv6地址数）。
    /// * vpc-max-assistant_cidrs（每个VPC可分配的辅助CIDR数）。
    /// * appid-max-end-point-services （每个开发商每个地域可创建的终端节点服务个数）。
    /// * appid-max-end-point-service-white-lists （每个开发商每个地域可创建的终端节点服务白名单个数）。
    @inlinable
    public func describeVpcLimits(limitTypes: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcLimitsResponse> {
        self.describeVpcLimits(.init(limitTypes: limitTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有网络配额
    ///
    /// 本接口（DescribeVpcLimits）用于获取私有网络配额，部分私有网络的配额有地域属性。
    /// LimitTypes取值范围：
    /// * appid-max-vpcs （每个开发商每个地域可创建的VPC数）。
    /// * vpc-max-subnets（每个VPC可创建的子网数）。
    /// * vpc-max-route-tables（每个VPC可创建的路由表数）。
    /// * route-table-max-policies（每个路由表可添加的策略数）。
    /// * vpc-max-vpn-gateways（每个VPC可创建的VPN网关数）。
    /// * appid-max-custom-gateways（每个开发商可创建的对端网关数）。
    /// * appid-max-vpn-connections（每个开发商可创建的VPN通道数）。
    /// * custom-gateway-max-vpn-connections（每个对端网关可创建的VPN通道数）。
    /// * vpn-gateway-max-custom-gateways（每个VPNGW可以创建的通道数）。
    /// * vpc-max-network-acls（每个VPC可创建的网络ACL数）。
    /// * network-acl-max-inbound-policies（每个网络ACL可添加的入站规则数）。
    /// * network-acl-max-outbound-policies（每个网络ACL可添加的出站规则数）。
    /// * vpc-max-vpcpeers（每个VPC可创建的对等连接数）。
    /// * vpc-max-available-vpcpeers（每个VPC可创建的有效对等连接数）。
    /// * vpc-max-basic-network-interconnections（每个VPC可创建的基础网络云主机与VPC互通数）。
    /// * direct-connection-max-snats（每个专线网关可创建的SNAT数）。
    /// * direct-connection-max-dnats（每个专线网关可创建的DNAT数）。
    /// * direct-connection-max-snapts（每个专线网关可创建的SNAPT数）。
    /// * direct-connection-max-dnapts（每个专线网关可创建的DNAPT数）。
    /// * vpc-max-nat-gateways（每个VPC可创建的NAT网关数）。
    /// * nat-gateway-max-eips（每个NAT可以购买的外网IP数量）。
    /// * vpc-max-enis（每个VPC可创建弹性网卡数）。
    /// * vpc-max-havips（每个VPC可创建HAVIP数）。
    /// * eni-max-private-ips（每个ENI可以绑定的内网IP数（ENI未绑定子机））。
    /// * nat-gateway-max-dnapts（每个NAT网关可创建的DNAPT数）。
    /// * vpc-max-ipv6s（每个VPC可分配的IPv6地址数）。
    /// * eni-max-ipv6s（每个ENI可分配的IPv6地址数）。
    /// * vpc-max-assistant_cidrs（每个VPC可分配的辅助CIDR数）。
    /// * appid-max-end-point-services （每个开发商每个地域可创建的终端节点服务个数）。
    /// * appid-max-end-point-service-white-lists （每个开发商每个地域可创建的终端节点服务白名单个数）。
    @inlinable
    public func describeVpcLimits(limitTypes: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcLimitsResponse {
        try await self.describeVpcLimits(.init(limitTypes: limitTypes), region: region, logger: logger, on: eventLoop)
    }
}
