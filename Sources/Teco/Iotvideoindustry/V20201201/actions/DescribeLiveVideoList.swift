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
    /// DescribeLiveVideoList请求参数结构体
    public struct DescribeLiveVideoListRequest: TCRequestModel {
        /// 偏移量
        public let offset: Int64

        /// 分页的每页数量
        public let limit: Int64

        /// 直播频道ID
        public let liveChannelId: String

        /// 开始录制开始时间
        public let startRecordTime: Int64?

        /// 开始录制结束时间
        public let endRecordTime: Int64?

        /// 过期开始时间
        public let startExpireTime: Int64?

        /// 过期结束时间
        public let endExpireTime: Int64?

        /// 文件大小范围 Byte
        public let startFileSize: Int64?

        /// 文件大小范围 Byte
        public let endFileSize: Int64?

        /// 录制状态，5: 录制回写完
        public let isRecording: Int64?

        public init(offset: Int64, limit: Int64, liveChannelId: String, startRecordTime: Int64? = nil, endRecordTime: Int64? = nil, startExpireTime: Int64? = nil, endExpireTime: Int64? = nil, startFileSize: Int64? = nil, endFileSize: Int64? = nil, isRecording: Int64? = nil) {
            self.offset = offset
            self.limit = limit
            self.liveChannelId = liveChannelId
            self.startRecordTime = startRecordTime
            self.endRecordTime = endRecordTime
            self.startExpireTime = startExpireTime
            self.endExpireTime = endExpireTime
            self.startFileSize = startFileSize
            self.endFileSize = endFileSize
            self.isRecording = isRecording
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case liveChannelId = "LiveChannelId"
            case startRecordTime = "StartRecordTime"
            case endRecordTime = "EndRecordTime"
            case startExpireTime = "StartExpireTime"
            case endExpireTime = "EndExpireTime"
            case startFileSize = "StartFileSize"
            case endFileSize = "EndFileSize"
            case isRecording = "IsRecording"
        }
    }

    /// DescribeLiveVideoList返回参数结构体
    public struct DescribeLiveVideoListResponse: TCResponseModel {
        /// 总的条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 录制任务详情数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordList: [LiveRecordItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case recordList = "RecordList"
            case requestId = "RequestId"
        }
    }

    /// 直播录像回放列表
    @inlinable
    public func describeLiveVideoList(_ input: DescribeLiveVideoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveVideoListResponse > {
        self.client.execute(action: "DescribeLiveVideoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播录像回放列表
    @inlinable
    public func describeLiveVideoList(_ input: DescribeLiveVideoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveVideoListResponse {
        try await self.client.execute(action: "DescribeLiveVideoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播录像回放列表
    @inlinable
    public func describeLiveVideoList(offset: Int64, limit: Int64, liveChannelId: String, startRecordTime: Int64? = nil, endRecordTime: Int64? = nil, startExpireTime: Int64? = nil, endExpireTime: Int64? = nil, startFileSize: Int64? = nil, endFileSize: Int64? = nil, isRecording: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveVideoListResponse > {
        self.describeLiveVideoList(DescribeLiveVideoListRequest(offset: offset, limit: limit, liveChannelId: liveChannelId, startRecordTime: startRecordTime, endRecordTime: endRecordTime, startExpireTime: startExpireTime, endExpireTime: endExpireTime, startFileSize: startFileSize, endFileSize: endFileSize, isRecording: isRecording), logger: logger, on: eventLoop)
    }

    /// 直播录像回放列表
    @inlinable
    public func describeLiveVideoList(offset: Int64, limit: Int64, liveChannelId: String, startRecordTime: Int64? = nil, endRecordTime: Int64? = nil, startExpireTime: Int64? = nil, endExpireTime: Int64? = nil, startFileSize: Int64? = nil, endFileSize: Int64? = nil, isRecording: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveVideoListResponse {
        try await self.describeLiveVideoList(DescribeLiveVideoListRequest(offset: offset, limit: limit, liveChannelId: liveChannelId, startRecordTime: startRecordTime, endRecordTime: endRecordTime, startExpireTime: startExpireTime, endExpireTime: endExpireTime, startFileSize: startFileSize, endFileSize: endFileSize, isRecording: isRecording), logger: logger, on: eventLoop)
    }
}
