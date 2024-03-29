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

extension Sqlserver {
    /// SwitchCloudInstanceHA请求参数结构体
    public struct SwitchCloudInstanceHARequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 切换执行方式，0-立刻执行，1-时间窗内执行，默认取值为0。
        public let waitSwitch: UInt64?

        public init(instanceId: String, waitSwitch: UInt64? = nil) {
            self.instanceId = instanceId
            self.waitSwitch = waitSwitch
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case waitSwitch = "WaitSwitch"
        }
    }

    /// SwitchCloudInstanceHA返回参数结构体
    public struct SwitchCloudInstanceHAResponse: TCResponse {
        /// 异步任务流程ID
        public let flowId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 实例手动主备切换
    ///
    /// 本接口(SwitchCloudInstanceHA)用于手动主备切换。
    @inlinable
    public func switchCloudInstanceHA(_ input: SwitchCloudInstanceHARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchCloudInstanceHAResponse> {
        self.client.execute(action: "SwitchCloudInstanceHA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例手动主备切换
    ///
    /// 本接口(SwitchCloudInstanceHA)用于手动主备切换。
    @inlinable
    public func switchCloudInstanceHA(_ input: SwitchCloudInstanceHARequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchCloudInstanceHAResponse {
        try await self.client.execute(action: "SwitchCloudInstanceHA", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例手动主备切换
    ///
    /// 本接口(SwitchCloudInstanceHA)用于手动主备切换。
    @inlinable
    public func switchCloudInstanceHA(instanceId: String, waitSwitch: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchCloudInstanceHAResponse> {
        self.switchCloudInstanceHA(.init(instanceId: instanceId, waitSwitch: waitSwitch), region: region, logger: logger, on: eventLoop)
    }

    /// 实例手动主备切换
    ///
    /// 本接口(SwitchCloudInstanceHA)用于手动主备切换。
    @inlinable
    public func switchCloudInstanceHA(instanceId: String, waitSwitch: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchCloudInstanceHAResponse {
        try await self.switchCloudInstanceHA(.init(instanceId: instanceId, waitSwitch: waitSwitch), region: region, logger: logger, on: eventLoop)
    }
}
