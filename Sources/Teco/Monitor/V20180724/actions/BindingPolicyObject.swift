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

import Logging
import NIOCore
import TecoCore

extension Monitor {
    /// BindingPolicyObject请求参数结构体
    public struct BindingPolicyObjectRequest: TCRequest {
        /// 必填。固定值"monitor"
        public let module: String

        /// 策略组id，例如 4739573。逐渐弃用，建议使用 PolicyId 参数
        public let groupId: Int64?

        /// 告警策略ID，例如“policy-gh892hg0”。PolicyId 参数与 GroupId 参数至少要填一个，否则会报参数错误，建议使用该参数。若两者同时存在则以该参数为准
        public let policyId: String?

        /// 实例分组ID
        public let instanceGroupId: Int64?

        /// 需要绑定的对象维度信息
        public let dimensions: [BindingPolicyObjectDimension]?

        /// 事件配置的告警
        public let ebSubject: String?

        /// 是否配置了事件告警
        public let ebEventFlag: Int64?

        public init(module: String, groupId: Int64? = nil, policyId: String? = nil, instanceGroupId: Int64? = nil, dimensions: [BindingPolicyObjectDimension]? = nil, ebSubject: String? = nil, ebEventFlag: Int64? = nil) {
            self.module = module
            self.groupId = groupId
            self.policyId = policyId
            self.instanceGroupId = instanceGroupId
            self.dimensions = dimensions
            self.ebSubject = ebSubject
            self.ebEventFlag = ebEventFlag
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case groupId = "GroupId"
            case policyId = "PolicyId"
            case instanceGroupId = "InstanceGroupId"
            case dimensions = "Dimensions"
            case ebSubject = "EbSubject"
            case ebEventFlag = "EbEventFlag"
        }
    }

    /// BindingPolicyObject返回参数结构体
    public struct BindingPolicyObjectResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定策略对象
    ///
    /// 将告警策略绑定到特定对象
    @inlinable @discardableResult
    public func bindingPolicyObject(_ input: BindingPolicyObjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindingPolicyObjectResponse> {
        self.client.execute(action: "BindingPolicyObject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定策略对象
    ///
    /// 将告警策略绑定到特定对象
    @inlinable @discardableResult
    public func bindingPolicyObject(_ input: BindingPolicyObjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindingPolicyObjectResponse {
        try await self.client.execute(action: "BindingPolicyObject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定策略对象
    ///
    /// 将告警策略绑定到特定对象
    @inlinable @discardableResult
    public func bindingPolicyObject(module: String, groupId: Int64? = nil, policyId: String? = nil, instanceGroupId: Int64? = nil, dimensions: [BindingPolicyObjectDimension]? = nil, ebSubject: String? = nil, ebEventFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindingPolicyObjectResponse> {
        self.bindingPolicyObject(.init(module: module, groupId: groupId, policyId: policyId, instanceGroupId: instanceGroupId, dimensions: dimensions, ebSubject: ebSubject, ebEventFlag: ebEventFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定策略对象
    ///
    /// 将告警策略绑定到特定对象
    @inlinable @discardableResult
    public func bindingPolicyObject(module: String, groupId: Int64? = nil, policyId: String? = nil, instanceGroupId: Int64? = nil, dimensions: [BindingPolicyObjectDimension]? = nil, ebSubject: String? = nil, ebEventFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindingPolicyObjectResponse {
        try await self.bindingPolicyObject(.init(module: module, groupId: groupId, policyId: policyId, instanceGroupId: instanceGroupId, dimensions: dimensions, ebSubject: ebSubject, ebEventFlag: ebEventFlag), region: region, logger: logger, on: eventLoop)
    }
}
