//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension As {
    /// DeleteScalingPolicy请求参数结构体
    public struct DeleteScalingPolicyRequest: TCRequestModel {
        /// 待删除的告警策略ID。
        public let autoScalingPolicyId: String

        public init(autoScalingPolicyId: String) {
            self.autoScalingPolicyId = autoScalingPolicyId
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingPolicyId = "AutoScalingPolicyId"
        }
    }

    /// DeleteScalingPolicy返回参数结构体
    public struct DeleteScalingPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除告警触发策略
    ///
    /// 本接口（DeleteScalingPolicy）用于删除告警触发策略。
    @inlinable
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteScalingPolicyResponse > {
        self.client.execute(action: "DeleteScalingPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除告警触发策略
    ///
    /// 本接口（DeleteScalingPolicy）用于删除告警触发策略。
    @inlinable
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScalingPolicyResponse {
        try await self.client.execute(action: "DeleteScalingPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除告警触发策略
    ///
    /// 本接口（DeleteScalingPolicy）用于删除告警触发策略。
    @inlinable
    public func deleteScalingPolicy(autoScalingPolicyId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteScalingPolicyResponse > {
        self.deleteScalingPolicy(DeleteScalingPolicyRequest(autoScalingPolicyId: autoScalingPolicyId), logger: logger, on: eventLoop)
    }

    /// 删除告警触发策略
    ///
    /// 本接口（DeleteScalingPolicy）用于删除告警触发策略。
    @inlinable
    public func deleteScalingPolicy(autoScalingPolicyId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScalingPolicyResponse {
        try await self.deleteScalingPolicy(DeleteScalingPolicyRequest(autoScalingPolicyId: autoScalingPolicyId), logger: logger, on: eventLoop)
    }
}
