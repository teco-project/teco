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

extension Bmeip {
    /// UnbindHosted请求参数结构体
    public struct UnbindHostedRequest: TCRequest {
        /// 托管机器实例ID
        public let instanceId: String

        /// Eip实例ID，可通过DescribeBmEip 接口返回字段中的 eipId获取。Eip和EipId参数必须要填写一个。
        public let eipId: String?

        /// 弹性IP。Eip和EipId参数必须要填写一个。
        public let eip: String?

        public init(instanceId: String, eipId: String? = nil, eip: String? = nil) {
            self.instanceId = instanceId
            self.eipId = eipId
            self.eip = eip
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case eipId = "EipId"
            case eip = "Eip"
        }
    }

    /// UnbindHosted返回参数结构体
    public struct UnbindHostedResponse: TCResponse {
        /// 异步任务ID，可以通过EipBmQueryTask查询任务状态
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 黑石托管机器解绑EIP
    ///
    /// UnbindHosted接口用于解绑托管机器上的EIP
    @inlinable
    public func unbindHosted(_ input: UnbindHostedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindHostedResponse> {
        self.client.execute(action: "UnbindHosted", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 黑石托管机器解绑EIP
    ///
    /// UnbindHosted接口用于解绑托管机器上的EIP
    @inlinable
    public func unbindHosted(_ input: UnbindHostedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindHostedResponse {
        try await self.client.execute(action: "UnbindHosted", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 黑石托管机器解绑EIP
    ///
    /// UnbindHosted接口用于解绑托管机器上的EIP
    @inlinable
    public func unbindHosted(instanceId: String, eipId: String? = nil, eip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindHostedResponse> {
        self.unbindHosted(.init(instanceId: instanceId, eipId: eipId, eip: eip), region: region, logger: logger, on: eventLoop)
    }

    /// 黑石托管机器解绑EIP
    ///
    /// UnbindHosted接口用于解绑托管机器上的EIP
    @inlinable
    public func unbindHosted(instanceId: String, eipId: String? = nil, eip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindHostedResponse {
        try await self.unbindHosted(.init(instanceId: instanceId, eipId: eipId, eip: eip), region: region, logger: logger, on: eventLoop)
    }
}
