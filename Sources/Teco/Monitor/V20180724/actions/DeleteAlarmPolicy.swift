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

extension Monitor {
    /// DeleteAlarmPolicy请求参数结构体
    public struct DeleteAlarmPolicyRequest: TCRequestModel {
        /// 模块名，固定值 monitor
        public let module: String

        /// 告警策略 ID 列表
        public let policyIds: [String]

        public init(module: String, policyIds: [String]) {
            self.module = module
            self.policyIds = policyIds
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyIds = "PolicyIds"
        }
    }

    /// DeleteAlarmPolicy返回参数结构体
    public struct DeleteAlarmPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除告警策略
    @inlinable @discardableResult
    public func deleteAlarmPolicy(_ input: DeleteAlarmPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlarmPolicyResponse> {
        self.client.execute(action: "DeleteAlarmPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除告警策略
    @inlinable @discardableResult
    public func deleteAlarmPolicy(_ input: DeleteAlarmPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmPolicyResponse {
        try await self.client.execute(action: "DeleteAlarmPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除告警策略
    @inlinable @discardableResult
    public func deleteAlarmPolicy(module: String, policyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlarmPolicyResponse> {
        self.deleteAlarmPolicy(.init(module: module, policyIds: policyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除告警策略
    @inlinable @discardableResult
    public func deleteAlarmPolicy(module: String, policyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmPolicyResponse {
        try await self.deleteAlarmPolicy(.init(module: module, policyIds: policyIds), region: region, logger: logger, on: eventLoop)
    }
}
