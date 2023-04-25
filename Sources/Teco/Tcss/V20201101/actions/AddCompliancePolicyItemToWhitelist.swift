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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcss {
    /// AddCompliancePolicyItemToWhitelist请求参数结构体
    public struct AddCompliancePolicyItemToWhitelistRequest: TCRequestModel {
        /// 要忽略的检测项的ID的列表
        public let customerPolicyItemIdSet: [UInt64]

        public init(customerPolicyItemIdSet: [UInt64]) {
            self.customerPolicyItemIdSet = customerPolicyItemIdSet
        }

        enum CodingKeys: String, CodingKey {
            case customerPolicyItemIdSet = "CustomerPolicyItemIdSet"
        }
    }

    /// AddCompliancePolicyItemToWhitelist返回参数结构体
    public struct AddCompliancePolicyItemToWhitelistResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全合规忽略检测项列表
    ///
    /// 将指定的检测项添加到白名单中，不显示未通过结果。
    @inlinable @discardableResult
    public func addCompliancePolicyItemToWhitelist(_ input: AddCompliancePolicyItemToWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCompliancePolicyItemToWhitelistResponse> {
        self.client.execute(action: "AddCompliancePolicyItemToWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规忽略检测项列表
    ///
    /// 将指定的检测项添加到白名单中，不显示未通过结果。
    @inlinable @discardableResult
    public func addCompliancePolicyItemToWhitelist(_ input: AddCompliancePolicyItemToWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCompliancePolicyItemToWhitelistResponse {
        try await self.client.execute(action: "AddCompliancePolicyItemToWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规忽略检测项列表
    ///
    /// 将指定的检测项添加到白名单中，不显示未通过结果。
    @inlinable @discardableResult
    public func addCompliancePolicyItemToWhitelist(customerPolicyItemIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCompliancePolicyItemToWhitelistResponse> {
        self.addCompliancePolicyItemToWhitelist(.init(customerPolicyItemIdSet: customerPolicyItemIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规忽略检测项列表
    ///
    /// 将指定的检测项添加到白名单中，不显示未通过结果。
    @inlinable @discardableResult
    public func addCompliancePolicyItemToWhitelist(customerPolicyItemIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCompliancePolicyItemToWhitelistResponse {
        try await self.addCompliancePolicyItemToWhitelist(.init(customerPolicyItemIdSet: customerPolicyItemIdSet), region: region, logger: logger, on: eventLoop)
    }
}
