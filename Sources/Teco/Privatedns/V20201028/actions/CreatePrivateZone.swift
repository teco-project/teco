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

extension Privatedns {
    /// CreatePrivateZone请求参数结构体
    public struct CreatePrivateZoneRequest: TCRequestModel {
        /// 域名，格式必须是标准的TLD
        public let domain: String

        /// 创建私有域的同时，为其打上标签
        public let tagSet: [TagInfo]?

        /// 创建私有域的同时，将其关联至VPC
        public let vpcSet: [VpcInfo]?

        /// 备注
        public let remark: String?

        /// 是否开启子域名递归, ENABLED， DISABLED。默认值为ENABLED
        public let dnsForwardStatus: String?

        /// 创建私有域的同时，将其关联至VPC
        public let vpcs: [VpcInfo]?

        /// 创建私有域同时绑定关联账号的VPC
        public let accountVpcSet: [AccountVpcInfo]?

        /// 是否CNAME加速：ENABLED，DISABLED，默认值为ENABLED
        public let cnameSpeedupStatus: String?

        public init(domain: String, tagSet: [TagInfo]? = nil, vpcSet: [VpcInfo]? = nil, remark: String? = nil, dnsForwardStatus: String? = nil, vpcs: [VpcInfo]? = nil, accountVpcSet: [AccountVpcInfo]? = nil, cnameSpeedupStatus: String? = nil) {
            self.domain = domain
            self.tagSet = tagSet
            self.vpcSet = vpcSet
            self.remark = remark
            self.dnsForwardStatus = dnsForwardStatus
            self.vpcs = vpcs
            self.accountVpcSet = accountVpcSet
            self.cnameSpeedupStatus = cnameSpeedupStatus
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case tagSet = "TagSet"
            case vpcSet = "VpcSet"
            case remark = "Remark"
            case dnsForwardStatus = "DnsForwardStatus"
            case vpcs = "Vpcs"
            case accountVpcSet = "AccountVpcSet"
            case cnameSpeedupStatus = "CnameSpeedupStatus"
        }
    }

    /// CreatePrivateZone返回参数结构体
    public struct CreatePrivateZoneResponse: TCResponseModel {
        /// 私有域ID, zone-xxxxxx
        public let zoneId: String

        /// 私有域名
        public let domain: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case domain = "Domain"
            case requestId = "RequestId"
        }
    }

    /// 创建私有域
    @inlinable
    public func createPrivateZone(_ input: CreatePrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrivateZoneResponse> {
        self.client.execute(action: "CreatePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建私有域
    @inlinable
    public func createPrivateZone(_ input: CreatePrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateZoneResponse {
        try await self.client.execute(action: "CreatePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建私有域
    @inlinable
    public func createPrivateZone(domain: String, tagSet: [TagInfo]? = nil, vpcSet: [VpcInfo]? = nil, remark: String? = nil, dnsForwardStatus: String? = nil, vpcs: [VpcInfo]? = nil, accountVpcSet: [AccountVpcInfo]? = nil, cnameSpeedupStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrivateZoneResponse> {
        self.createPrivateZone(.init(domain: domain, tagSet: tagSet, vpcSet: vpcSet, remark: remark, dnsForwardStatus: dnsForwardStatus, vpcs: vpcs, accountVpcSet: accountVpcSet, cnameSpeedupStatus: cnameSpeedupStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 创建私有域
    @inlinable
    public func createPrivateZone(domain: String, tagSet: [TagInfo]? = nil, vpcSet: [VpcInfo]? = nil, remark: String? = nil, dnsForwardStatus: String? = nil, vpcs: [VpcInfo]? = nil, accountVpcSet: [AccountVpcInfo]? = nil, cnameSpeedupStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateZoneResponse {
        try await self.createPrivateZone(.init(domain: domain, tagSet: tagSet, vpcSet: vpcSet, remark: remark, dnsForwardStatus: dnsForwardStatus, vpcs: vpcs, accountVpcSet: accountVpcSet, cnameSpeedupStatus: cnameSpeedupStatus), region: region, logger: logger, on: eventLoop)
    }
}
