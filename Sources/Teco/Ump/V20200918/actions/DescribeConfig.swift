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

extension Ump {
    /// DescribeConfig请求参数结构体
    public struct DescribeConfigRequest: TCRequestModel {
        /// 会话ID
        public let sessionId: String

        /// 摄像头签名
        public let cameraSign: String

        /// 摄像头app id
        public let cameraAppId: String

        /// 摄像头时间戳，毫秒
        public let cameraTimestamp: Int64

        /// MAC地址，字母大写
        public let serverMac: String?

        /// 集团编码
        public let groupCode: String?

        /// 广场ID
        public let mallId: UInt64?

        public init(sessionId: String, cameraSign: String, cameraAppId: String, cameraTimestamp: Int64, serverMac: String? = nil, groupCode: String? = nil, mallId: UInt64? = nil) {
            self.sessionId = sessionId
            self.cameraSign = cameraSign
            self.cameraAppId = cameraAppId
            self.cameraTimestamp = cameraTimestamp
            self.serverMac = serverMac
            self.groupCode = groupCode
            self.mallId = mallId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case cameraSign = "CameraSign"
            case cameraAppId = "CameraAppId"
            case cameraTimestamp = "CameraTimestamp"
            case serverMac = "ServerMac"
            case groupCode = "GroupCode"
            case mallId = "MallId"
        }
    }

    /// DescribeConfig返回参数结构体
    public struct DescribeConfigResponse: TCResponseModel {
        /// 会话ID
        public let sessionId: String

        /// 配置版本号
        public let version: Int64

        /// 摄像头列表
        public let cameras: [CameraConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case version = "Version"
            case cameras = "Cameras"
            case requestId = "RequestId"
        }
    }

    /// 获取摄像头配置信息
    ///
    /// 获取摄像头配置信息
    /// mac不为空返回指定相机配置
    /// mac为空返回对应GroupCode和MallId全量配置
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigResponse> {
        self.client.execute(action: "DescribeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取摄像头配置信息
    ///
    /// 获取摄像头配置信息
    /// mac不为空返回指定相机配置
    /// mac为空返回对应GroupCode和MallId全量配置
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.client.execute(action: "DescribeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取摄像头配置信息
    ///
    /// 获取摄像头配置信息
    /// mac不为空返回指定相机配置
    /// mac为空返回对应GroupCode和MallId全量配置
    @inlinable
    public func describeConfig(sessionId: String, cameraSign: String, cameraAppId: String, cameraTimestamp: Int64, serverMac: String? = nil, groupCode: String? = nil, mallId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigResponse> {
        self.describeConfig(.init(sessionId: sessionId, cameraSign: cameraSign, cameraAppId: cameraAppId, cameraTimestamp: cameraTimestamp, serverMac: serverMac, groupCode: groupCode, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取摄像头配置信息
    ///
    /// 获取摄像头配置信息
    /// mac不为空返回指定相机配置
    /// mac为空返回对应GroupCode和MallId全量配置
    @inlinable
    public func describeConfig(sessionId: String, cameraSign: String, cameraAppId: String, cameraTimestamp: Int64, serverMac: String? = nil, groupCode: String? = nil, mallId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.describeConfig(.init(sessionId: sessionId, cameraSign: cameraSign, cameraAppId: cameraAppId, cameraTimestamp: cameraTimestamp, serverMac: serverMac, groupCode: groupCode, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }
}
