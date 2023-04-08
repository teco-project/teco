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

extension As {
    /// SetInstancesProtection请求参数结构体
    public struct SetInstancesProtectionRequest: TCRequestModel {
        /// 伸缩组ID。
        public let autoScalingGroupId: String

        /// 实例ID。
        public let instanceIds: [String]

        /// 实例是否需要设置保护。
        public let protectedFromScaleIn: Bool

        public init(autoScalingGroupId: String, instanceIds: [String], protectedFromScaleIn: Bool) {
            self.autoScalingGroupId = autoScalingGroupId
            self.instanceIds = instanceIds
            self.protectedFromScaleIn = protectedFromScaleIn
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case instanceIds = "InstanceIds"
            case protectedFromScaleIn = "ProtectedFromScaleIn"
        }
    }

    /// SetInstancesProtection返回参数结构体
    public struct SetInstancesProtectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置实例保护
    ///
    /// 本接口（SetInstancesProtection）用于设置实例保护。
    /// 实例设置保护之后，当发生不健康替换、报警策略、期望值变更等触发缩容时，将不对此实例缩容操作。
    @inlinable @discardableResult
    public func setInstancesProtection(_ input: SetInstancesProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetInstancesProtectionResponse> {
        self.client.execute(action: "SetInstancesProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置实例保护
    ///
    /// 本接口（SetInstancesProtection）用于设置实例保护。
    /// 实例设置保护之后，当发生不健康替换、报警策略、期望值变更等触发缩容时，将不对此实例缩容操作。
    @inlinable @discardableResult
    public func setInstancesProtection(_ input: SetInstancesProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetInstancesProtectionResponse {
        try await self.client.execute(action: "SetInstancesProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置实例保护
    ///
    /// 本接口（SetInstancesProtection）用于设置实例保护。
    /// 实例设置保护之后，当发生不健康替换、报警策略、期望值变更等触发缩容时，将不对此实例缩容操作。
    @inlinable @discardableResult
    public func setInstancesProtection(autoScalingGroupId: String, instanceIds: [String], protectedFromScaleIn: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetInstancesProtectionResponse> {
        self.setInstancesProtection(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds, protectedFromScaleIn: protectedFromScaleIn), region: region, logger: logger, on: eventLoop)
    }

    /// 设置实例保护
    ///
    /// 本接口（SetInstancesProtection）用于设置实例保护。
    /// 实例设置保护之后，当发生不健康替换、报警策略、期望值变更等触发缩容时，将不对此实例缩容操作。
    @inlinable @discardableResult
    public func setInstancesProtection(autoScalingGroupId: String, instanceIds: [String], protectedFromScaleIn: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetInstancesProtectionResponse {
        try await self.setInstancesProtection(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds, protectedFromScaleIn: protectedFromScaleIn), region: region, logger: logger, on: eventLoop)
    }
}
