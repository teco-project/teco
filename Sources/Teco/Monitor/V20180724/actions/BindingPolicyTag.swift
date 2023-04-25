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

extension Monitor {
    /// BindingPolicyTag请求参数结构体
    public struct BindingPolicyTagRequest: TCRequestModel {
        /// 固定取值 monitor
        public let module: String

        /// 策略ID
        public let policyId: String

        /// 用于实例、实例组绑定和解绑接口（BindingPolicyObject、UnBindingAllPolicyObject、UnBindingPolicyObject）的策略 ID
        public let groupId: String

        /// 产品类型
        public let serviceType: String

        /// 策略标签
        public let tag: PolicyTag?

        /// 实例分组ID
        public let instanceGroupId: Int64?

        /// 批量绑定标签
        public let batchTag: [PolicyTag]?

        public init(module: String, policyId: String, groupId: String, serviceType: String, tag: PolicyTag? = nil, instanceGroupId: Int64? = nil, batchTag: [PolicyTag]? = nil) {
            self.module = module
            self.policyId = policyId
            self.groupId = groupId
            self.serviceType = serviceType
            self.tag = tag
            self.instanceGroupId = instanceGroupId
            self.batchTag = batchTag
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case groupId = "GroupId"
            case serviceType = "ServiceType"
            case tag = "Tag"
            case instanceGroupId = "InstanceGroupId"
            case batchTag = "BatchTag"
        }
    }

    /// BindingPolicyTag返回参数结构体
    public struct BindingPolicyTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 策略绑定标签
    @inlinable @discardableResult
    public func bindingPolicyTag(_ input: BindingPolicyTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindingPolicyTagResponse> {
        self.client.execute(action: "BindingPolicyTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 策略绑定标签
    @inlinable @discardableResult
    public func bindingPolicyTag(_ input: BindingPolicyTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindingPolicyTagResponse {
        try await self.client.execute(action: "BindingPolicyTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 策略绑定标签
    @inlinable @discardableResult
    public func bindingPolicyTag(module: String, policyId: String, groupId: String, serviceType: String, tag: PolicyTag? = nil, instanceGroupId: Int64? = nil, batchTag: [PolicyTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindingPolicyTagResponse> {
        self.bindingPolicyTag(.init(module: module, policyId: policyId, groupId: groupId, serviceType: serviceType, tag: tag, instanceGroupId: instanceGroupId, batchTag: batchTag), region: region, logger: logger, on: eventLoop)
    }

    /// 策略绑定标签
    @inlinable @discardableResult
    public func bindingPolicyTag(module: String, policyId: String, groupId: String, serviceType: String, tag: PolicyTag? = nil, instanceGroupId: Int64? = nil, batchTag: [PolicyTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindingPolicyTagResponse {
        try await self.bindingPolicyTag(.init(module: module, policyId: policyId, groupId: groupId, serviceType: serviceType, tag: tag, instanceGroupId: instanceGroupId, batchTag: batchTag), region: region, logger: logger, on: eventLoop)
    }
}
