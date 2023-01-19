//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeCrossBorderCompliance请求参数结构体
    public struct DescribeCrossBorderComplianceRequest: TCRequestModel {
        /// （精确匹配）服务商，可选值：`UNICOM`。
        public let serviceProvider: String?

        /// （精确匹配）合规化审批单`ID`。
        public let complianceId: UInt64?

        /// （模糊查询）公司名称。
        public let company: String?

        /// （精确匹配）统一社会信用代码。
        public let uniformSocialCreditCode: String?

        /// （模糊查询）法定代表人。
        public let legalPerson: String?

        /// （模糊查询）发证机关。
        public let issuingAuthority: String?

        /// （模糊查询）营业执照住所。
        public let businessAddress: String?

        /// （精确匹配）邮编。
        public let postCode: UInt64?

        /// （模糊查询）经办人。
        public let manager: String?

        /// （精确查询）经办人身份证号。
        public let managerId: String?

        /// （模糊查询）经办人身份证地址。
        public let managerAddress: String?

        /// （精确匹配）经办人联系电话。
        public let managerTelephone: String?

        /// （精确匹配）电子邮箱。
        public let email: String?

        /// （精确匹配）服务开始日期，如：`2020-07-28`。
        public let serviceStartDate: String?

        /// （精确匹配）服务结束日期，如：`2021-07-28`。
        public let serviceEndDate: String?

        /// （精确匹配）状态。待审批：`PENDING`，通过：`APPROVED `，拒绝：`DENY`。
        public let state: String?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        public init(serviceProvider: String? = nil, complianceId: UInt64? = nil, company: String? = nil, uniformSocialCreditCode: String? = nil, legalPerson: String? = nil, issuingAuthority: String? = nil, businessAddress: String? = nil, postCode: UInt64? = nil, manager: String? = nil, managerId: String? = nil, managerAddress: String? = nil, managerTelephone: String? = nil, email: String? = nil, serviceStartDate: String? = nil, serviceEndDate: String? = nil, state: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.serviceProvider = serviceProvider
            self.complianceId = complianceId
            self.company = company
            self.uniformSocialCreditCode = uniformSocialCreditCode
            self.legalPerson = legalPerson
            self.issuingAuthority = issuingAuthority
            self.businessAddress = businessAddress
            self.postCode = postCode
            self.manager = manager
            self.managerId = managerId
            self.managerAddress = managerAddress
            self.managerTelephone = managerTelephone
            self.email = email
            self.serviceStartDate = serviceStartDate
            self.serviceEndDate = serviceEndDate
            self.state = state
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case serviceProvider = "ServiceProvider"
            case complianceId = "ComplianceId"
            case company = "Company"
            case uniformSocialCreditCode = "UniformSocialCreditCode"
            case legalPerson = "LegalPerson"
            case issuingAuthority = "IssuingAuthority"
            case businessAddress = "BusinessAddress"
            case postCode = "PostCode"
            case manager = "Manager"
            case managerId = "ManagerId"
            case managerAddress = "ManagerAddress"
            case managerTelephone = "ManagerTelephone"
            case email = "Email"
            case serviceStartDate = "ServiceStartDate"
            case serviceEndDate = "ServiceEndDate"
            case state = "State"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeCrossBorderCompliance返回参数结构体
    public struct DescribeCrossBorderComplianceResponse: TCResponseModel {
        /// 合规化审批单列表。
        public let crossBorderComplianceSet: [CrossBorderCompliance]

        /// 合规化审批单总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case crossBorderComplianceSet = "CrossBorderComplianceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询合规化审批单
    ///
    /// 本接口（DescribeCrossBorderCompliance）用于查询用户创建的合规化资质审批单。
    /// 服务商可以查询服务名下的任意 `APPID` 创建的审批单；非服务商，只能查询自己审批单。
    @inlinable
    public func describeCrossBorderCompliance(_ input: DescribeCrossBorderComplianceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderComplianceResponse> {
        self.client.execute(action: "DescribeCrossBorderCompliance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询合规化审批单
    ///
    /// 本接口（DescribeCrossBorderCompliance）用于查询用户创建的合规化资质审批单。
    /// 服务商可以查询服务名下的任意 `APPID` 创建的审批单；非服务商，只能查询自己审批单。
    @inlinable
    public func describeCrossBorderCompliance(_ input: DescribeCrossBorderComplianceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderComplianceResponse {
        try await self.client.execute(action: "DescribeCrossBorderCompliance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询合规化审批单
    ///
    /// 本接口（DescribeCrossBorderCompliance）用于查询用户创建的合规化资质审批单。
    /// 服务商可以查询服务名下的任意 `APPID` 创建的审批单；非服务商，只能查询自己审批单。
    @inlinable
    public func describeCrossBorderCompliance(serviceProvider: String? = nil, complianceId: UInt64? = nil, company: String? = nil, uniformSocialCreditCode: String? = nil, legalPerson: String? = nil, issuingAuthority: String? = nil, businessAddress: String? = nil, postCode: UInt64? = nil, manager: String? = nil, managerId: String? = nil, managerAddress: String? = nil, managerTelephone: String? = nil, email: String? = nil, serviceStartDate: String? = nil, serviceEndDate: String? = nil, state: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderComplianceResponse> {
        self.describeCrossBorderCompliance(DescribeCrossBorderComplianceRequest(serviceProvider: serviceProvider, complianceId: complianceId, company: company, uniformSocialCreditCode: uniformSocialCreditCode, legalPerson: legalPerson, issuingAuthority: issuingAuthority, businessAddress: businessAddress, postCode: postCode, manager: manager, managerId: managerId, managerAddress: managerAddress, managerTelephone: managerTelephone, email: email, serviceStartDate: serviceStartDate, serviceEndDate: serviceEndDate, state: state, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询合规化审批单
    ///
    /// 本接口（DescribeCrossBorderCompliance）用于查询用户创建的合规化资质审批单。
    /// 服务商可以查询服务名下的任意 `APPID` 创建的审批单；非服务商，只能查询自己审批单。
    @inlinable
    public func describeCrossBorderCompliance(serviceProvider: String? = nil, complianceId: UInt64? = nil, company: String? = nil, uniformSocialCreditCode: String? = nil, legalPerson: String? = nil, issuingAuthority: String? = nil, businessAddress: String? = nil, postCode: UInt64? = nil, manager: String? = nil, managerId: String? = nil, managerAddress: String? = nil, managerTelephone: String? = nil, email: String? = nil, serviceStartDate: String? = nil, serviceEndDate: String? = nil, state: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderComplianceResponse {
        try await self.describeCrossBorderCompliance(DescribeCrossBorderComplianceRequest(serviceProvider: serviceProvider, complianceId: complianceId, company: company, uniformSocialCreditCode: uniformSocialCreditCode, legalPerson: legalPerson, issuingAuthority: issuingAuthority, businessAddress: businessAddress, postCode: postCode, manager: manager, managerId: managerId, managerAddress: managerAddress, managerTelephone: managerTelephone, email: email, serviceStartDate: serviceStartDate, serviceEndDate: serviceEndDate, state: state, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
