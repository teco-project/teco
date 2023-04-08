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

import TecoCore

extension Tcss {
    /// DeleteComplianceAssetPolicySetFromWhitelist请求参数结构体
    public struct DeleteComplianceAssetPolicySetFromWhitelistRequest: TCRequestModel {
        /// 资产ID
        public let assetItemId: UInt64

        /// 需要忽略指定资产内的检查项ID列表
        public let customerPolicyItemIdSet: [UInt64]?

        public init(assetItemId: UInt64, customerPolicyItemIdSet: [UInt64]? = nil) {
            self.assetItemId = assetItemId
            self.customerPolicyItemIdSet = customerPolicyItemIdSet
        }

        enum CodingKeys: String, CodingKey {
            case assetItemId = "AssetItemId"
            case customerPolicyItemIdSet = "CustomerPolicyItemIdSet"
        }
    }

    /// DeleteComplianceAssetPolicySetFromWhitelist返回参数结构体
    public struct DeleteComplianceAssetPolicySetFromWhitelistResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除安全合规忽略项， 资产+检测项列表
    ///
    /// 移除安全合规忽略(资产+检测项)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyAssetSetToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func deleteComplianceAssetPolicySetFromWhitelist(_ input: DeleteComplianceAssetPolicySetFromWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteComplianceAssetPolicySetFromWhitelistResponse> {
        self.client.execute(action: "DeleteComplianceAssetPolicySetFromWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除安全合规忽略项， 资产+检测项列表
    ///
    /// 移除安全合规忽略(资产+检测项)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyAssetSetToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func deleteComplianceAssetPolicySetFromWhitelist(_ input: DeleteComplianceAssetPolicySetFromWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteComplianceAssetPolicySetFromWhitelistResponse {
        try await self.client.execute(action: "DeleteComplianceAssetPolicySetFromWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除安全合规忽略项， 资产+检测项列表
    ///
    /// 移除安全合规忽略(资产+检测项)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyAssetSetToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func deleteComplianceAssetPolicySetFromWhitelist(assetItemId: UInt64, customerPolicyItemIdSet: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteComplianceAssetPolicySetFromWhitelistResponse> {
        self.deleteComplianceAssetPolicySetFromWhitelist(.init(assetItemId: assetItemId, customerPolicyItemIdSet: customerPolicyItemIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除安全合规忽略项， 资产+检测项列表
    ///
    /// 移除安全合规忽略(资产+检测项)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyAssetSetToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func deleteComplianceAssetPolicySetFromWhitelist(assetItemId: UInt64, customerPolicyItemIdSet: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteComplianceAssetPolicySetFromWhitelistResponse {
        try await self.deleteComplianceAssetPolicySetFromWhitelist(.init(assetItemId: assetItemId, customerPolicyItemIdSet: customerPolicyItemIdSet), region: region, logger: logger, on: eventLoop)
    }
}
