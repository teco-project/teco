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

extension Gme {
    /// DescribeTaskInfo请求参数结构体
    public struct DescribeTaskInfoRequest: TCRequestModel {
        /// 应用ID。
        public let bizId: UInt64

        /// 房间ID。
        public let roomId: String

        public init(bizId: UInt64, roomId: String) {
            self.bizId = bizId
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case roomId = "RoomId"
        }
    }

    /// DescribeTaskInfo返回参数结构体
    public struct DescribeTaskInfoResponse: TCResponseModel {
        /// 进行中的任务taskid（StartRecord接口返回）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?

        /// 录制类型：1代表单流 2代表混流 3代表单流和混流。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordMode: UInt64?

        /// 指定订阅流白名单或者黑名单。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subscribeRecordUserIds: SubscribeRecordUserIds?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case recordMode = "RecordMode"
            case subscribeRecordUserIds = "SubscribeRecordUserIds"
            case requestId = "RequestId"
        }
    }

    /// 查询房间录制信息
    ///
    /// 查询房间录制的详细信息
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInfoResponse> {
        self.client.execute(action: "DescribeTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询房间录制信息
    ///
    /// 查询房间录制的详细信息
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.client.execute(action: "DescribeTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询房间录制信息
    ///
    /// 查询房间录制的详细信息
    @inlinable
    public func describeTaskInfo(bizId: UInt64, roomId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInfoResponse> {
        self.describeTaskInfo(.init(bizId: bizId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询房间录制信息
    ///
    /// 查询房间录制的详细信息
    @inlinable
    public func describeTaskInfo(bizId: UInt64, roomId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.describeTaskInfo(.init(bizId: bizId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
