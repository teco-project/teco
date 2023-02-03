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
    /// AddCompliancePolicyAssetSetToWhitelist请求参数结构体
    public struct AddCompliancePolicyAssetSetToWhitelistRequest: TCRequestModel {
        /// 检查项ID
        public let customerPolicyItemId: UInt64

        /// 需要忽略指定检查项内的资产ID列表
        public let customerAssetItemIdSet: [UInt64]?

        public init(customerPolicyItemId: UInt64, customerAssetItemIdSet: [UInt64]? = nil) {
            self.customerPolicyItemId = customerPolicyItemId
            self.customerAssetItemIdSet = customerAssetItemIdSet
        }

        enum CodingKeys: String, CodingKey {
            case customerPolicyItemId = "CustomerPolicyItemId"
            case customerAssetItemIdSet = "CustomerAssetItemIdSet"
        }
    }

    /// AddCompliancePolicyAssetSetToWhitelist返回参数结构体
    public struct AddCompliancePolicyAssetSetToWhitelistResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全合规忽略检测项+资产列表
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyItemToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func addCompliancePolicyAssetSetToWhitelist(_ input: AddCompliancePolicyAssetSetToWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCompliancePolicyAssetSetToWhitelistResponse> {
        self.client.execute(action: "AddCompliancePolicyAssetSetToWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规忽略检测项+资产列表
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyItemToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func addCompliancePolicyAssetSetToWhitelist(_ input: AddCompliancePolicyAssetSetToWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCompliancePolicyAssetSetToWhitelistResponse {
        try await self.client.execute(action: "AddCompliancePolicyAssetSetToWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规忽略检测项+资产列表
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyItemToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func addCompliancePolicyAssetSetToWhitelist(customerPolicyItemId: UInt64, customerAssetItemIdSet: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCompliancePolicyAssetSetToWhitelistResponse> {
        let input = AddCompliancePolicyAssetSetToWhitelistRequest(customerPolicyItemId: customerPolicyItemId, customerAssetItemIdSet: customerAssetItemIdSet)
        return self.client.execute(action: "AddCompliancePolicyAssetSetToWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规忽略检测项+资产列表
    ///
    /// 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
    /// 参考的AddCompliancePolicyItemToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对
    @inlinable @discardableResult
    public func addCompliancePolicyAssetSetToWhitelist(customerPolicyItemId: UInt64, customerAssetItemIdSet: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCompliancePolicyAssetSetToWhitelistResponse {
        let input = AddCompliancePolicyAssetSetToWhitelistRequest(customerPolicyItemId: customerPolicyItemId, customerAssetItemIdSet: customerAssetItemIdSet)
        return try await self.client.execute(action: "AddCompliancePolicyAssetSetToWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
