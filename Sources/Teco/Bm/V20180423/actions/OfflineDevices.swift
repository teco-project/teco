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

extension Bm {
    /// OfflineDevices请求参数结构体
    public struct OfflineDevicesRequest: TCRequestModel {
        /// 需要退还的物理机ID列表
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// OfflineDevices返回参数结构体
    public struct OfflineDevicesResponse: TCResponseModel {
        /// 黑石异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 退还服务器
    ///
    /// 销毁黑石物理机实例：可以销毁物理机列表中的竞价实例，或回收站列表中所有计费模式的实例
    @inlinable
    public func offlineDevices(_ input: OfflineDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OfflineDevicesResponse> {
        self.client.execute(action: "OfflineDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退还服务器
    ///
    /// 销毁黑石物理机实例：可以销毁物理机列表中的竞价实例，或回收站列表中所有计费模式的实例
    @inlinable
    public func offlineDevices(_ input: OfflineDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineDevicesResponse {
        try await self.client.execute(action: "OfflineDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退还服务器
    ///
    /// 销毁黑石物理机实例：可以销毁物理机列表中的竞价实例，或回收站列表中所有计费模式的实例
    @inlinable
    public func offlineDevices(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OfflineDevicesResponse> {
        self.offlineDevices(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 退还服务器
    ///
    /// 销毁黑石物理机实例：可以销毁物理机列表中的竞价实例，或回收站列表中所有计费模式的实例
    @inlinable
    public func offlineDevices(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineDevicesResponse {
        try await self.offlineDevices(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
