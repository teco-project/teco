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

extension Tcss {
    /// DeleteCompliancePolicyAssetSetFromWhitelist请求参数结构体
    public struct DeleteCompliancePolicyAssetSetFromWhitelistRequest: TCRequestModel {
        /// （检查项ID+资产ID列表）的列表
        public let policyAssetSetList: [CompliancePolicyAssetSetItem]

        public init(policyAssetSetList: [CompliancePolicyAssetSetItem]) {
            self.policyAssetSetList = policyAssetSetList
        }

        enum CodingKeys: String, CodingKey {
            case policyAssetSetList = "PolicyAssetSetList"
        }
    }

    /// DeleteCompliancePolicyAssetSetFromWhitelist返回参数结构体
    public struct DeleteCompliancePolicyAssetSetFromWhitelistResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除检测项+资产列表的白名单策略
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    @inlinable @discardableResult
    public func deleteCompliancePolicyAssetSetFromWhitelist(_ input: DeleteCompliancePolicyAssetSetFromWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCompliancePolicyAssetSetFromWhitelistResponse> {
        self.client.execute(action: "DeleteCompliancePolicyAssetSetFromWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除检测项+资产列表的白名单策略
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    @inlinable @discardableResult
    public func deleteCompliancePolicyAssetSetFromWhitelist(_ input: DeleteCompliancePolicyAssetSetFromWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCompliancePolicyAssetSetFromWhitelistResponse {
        try await self.client.execute(action: "DeleteCompliancePolicyAssetSetFromWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除检测项+资产列表的白名单策略
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    @inlinable @discardableResult
    public func deleteCompliancePolicyAssetSetFromWhitelist(policyAssetSetList: [CompliancePolicyAssetSetItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCompliancePolicyAssetSetFromWhitelistResponse> {
        self.deleteCompliancePolicyAssetSetFromWhitelist(DeleteCompliancePolicyAssetSetFromWhitelistRequest(policyAssetSetList: policyAssetSetList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除检测项+资产列表的白名单策略
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    @inlinable @discardableResult
    public func deleteCompliancePolicyAssetSetFromWhitelist(policyAssetSetList: [CompliancePolicyAssetSetItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCompliancePolicyAssetSetFromWhitelistResponse {
        try await self.deleteCompliancePolicyAssetSetFromWhitelist(DeleteCompliancePolicyAssetSetFromWhitelistRequest(policyAssetSetList: policyAssetSetList), region: region, logger: logger, on: eventLoop)
    }
}
