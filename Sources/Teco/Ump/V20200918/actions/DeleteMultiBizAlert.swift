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
    /// DeleteMultiBizAlert请求参数结构体
    public struct DeleteMultiBizAlertRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 点位ID
        public let zoneId: UInt64

        /// 摄像头ID
        public let cameraId: UInt64

        /// 消警动作:
        /// 1: 误报
        /// 2: 正报合规
        /// 3: 正报不合规，整改完成
        public let actionType: Int64

        /// 图片base64字符串
        public let image: String?

        public init(groupCode: String, mallId: UInt64, zoneId: UInt64, cameraId: UInt64, actionType: Int64, image: String? = nil) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.zoneId = zoneId
            self.cameraId = cameraId
            self.actionType = actionType
            self.image = image
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case zoneId = "ZoneId"
            case cameraId = "CameraId"
            case actionType = "ActionType"
            case image = "Image"
        }
    }

    /// DeleteMultiBizAlert返回参数结构体
    public struct DeleteMultiBizAlertResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 多经点位消警
    ///
    /// 集团广场的多经点位消警
    @inlinable @discardableResult
    public func deleteMultiBizAlert(_ input: DeleteMultiBizAlertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiBizAlertResponse> {
        self.client.execute(action: "DeleteMultiBizAlert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 多经点位消警
    ///
    /// 集团广场的多经点位消警
    @inlinable @discardableResult
    public func deleteMultiBizAlert(_ input: DeleteMultiBizAlertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMultiBizAlertResponse {
        try await self.client.execute(action: "DeleteMultiBizAlert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 多经点位消警
    ///
    /// 集团广场的多经点位消警
    @inlinable @discardableResult
    public func deleteMultiBizAlert(groupCode: String, mallId: UInt64, zoneId: UInt64, cameraId: UInt64, actionType: Int64, image: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiBizAlertResponse> {
        self.deleteMultiBizAlert(.init(groupCode: groupCode, mallId: mallId, zoneId: zoneId, cameraId: cameraId, actionType: actionType, image: image), region: region, logger: logger, on: eventLoop)
    }

    /// 多经点位消警
    ///
    /// 集团广场的多经点位消警
    @inlinable @discardableResult
    public func deleteMultiBizAlert(groupCode: String, mallId: UInt64, zoneId: UInt64, cameraId: UInt64, actionType: Int64, image: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMultiBizAlertResponse {
        try await self.deleteMultiBizAlert(.init(groupCode: groupCode, mallId: mallId, zoneId: zoneId, cameraId: cameraId, actionType: actionType, image: image), region: region, logger: logger, on: eventLoop)
    }
}
