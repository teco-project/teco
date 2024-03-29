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

extension Gaap {
    /// OpenSecurityPolicy请求参数结构体
    public struct OpenSecurityPolicyRequest: TCRequest {
        /// 需开启安全策略的通道ID
        public let proxyId: String?

        /// 安全策略ID
        public let policyId: String?

        public init(proxyId: String? = nil, policyId: String? = nil) {
            self.proxyId = proxyId
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case policyId = "PolicyId"
        }
    }

    /// OpenSecurityPolicy返回参数结构体
    public struct OpenSecurityPolicyResponse: TCResponse {
        /// 异步流程ID，可以通过DescribeAsyncTaskStatus接口查询流程运行状态
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 开启安全策略
    @inlinable
    public func openSecurityPolicy(_ input: OpenSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenSecurityPolicyResponse> {
        self.client.execute(action: "OpenSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启安全策略
    @inlinable
    public func openSecurityPolicy(_ input: OpenSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenSecurityPolicyResponse {
        try await self.client.execute(action: "OpenSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启安全策略
    @inlinable
    public func openSecurityPolicy(proxyId: String? = nil, policyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenSecurityPolicyResponse> {
        self.openSecurityPolicy(.init(proxyId: proxyId, policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启安全策略
    @inlinable
    public func openSecurityPolicy(proxyId: String? = nil, policyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenSecurityPolicyResponse {
        try await self.openSecurityPolicy(.init(proxyId: proxyId, policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
