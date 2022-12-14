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

extension Iotvideoindustry {
    /// DescribePresetList请求参数结构体
    public struct DescribePresetListRequest: TCRequestModel {
        /// 视频通道唯一标识
        public let channelId: String

        /// 设备唯一标识
        public let deviceId: String

        public init(channelId: String, deviceId: String) {
            self.channelId = channelId
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case deviceId = "DeviceId"
        }
    }

    /// DescribePresetList返回参数结构体
    public struct DescribePresetListResponse: TCResponseModel {
        /// 预置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [PresetItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取预置位列表
    @inlinable
    public func describePresetList(_ input: DescribePresetListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePresetListResponse > {
        self.client.execute(action: "DescribePresetList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取预置位列表
    @inlinable
    public func describePresetList(_ input: DescribePresetListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePresetListResponse {
        try await self.client.execute(action: "DescribePresetList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取预置位列表
    @inlinable
    public func describePresetList(channelId: String, deviceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePresetListResponse > {
        self.describePresetList(DescribePresetListRequest(channelId: channelId, deviceId: deviceId), logger: logger, on: eventLoop)
    }

    /// 获取预置位列表
    @inlinable
    public func describePresetList(channelId: String, deviceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePresetListResponse {
        try await self.describePresetList(DescribePresetListRequest(channelId: channelId, deviceId: deviceId), logger: logger, on: eventLoop)
    }
}
