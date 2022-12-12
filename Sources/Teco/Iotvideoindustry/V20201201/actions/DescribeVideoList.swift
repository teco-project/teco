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
    /// DescribeVideoList请求参数结构体
    public struct DescribeVideoListRequest: TCRequestModel {
        /// 偏移
        public let offset: Int64
        
        /// 限制
        public let limit: Int64
        
        /// 开始时间戳，秒级
        public let startTime: Int64?
        
        /// 结束时间戳，秒级
        public let endTime: Int64?
        
        /// 设备Id
        public let deviceId: String?
        
        /// 开始录制范围 开始
        public let startRecordTime: Int64?
        
        /// 开始录制范围 结束
        public let endRecordTime: Int64?
        
        /// 过期时间范围 开始
        public let startExpireTime: Int64?
        
        /// 过期时间范围 结束
        public let endExpireTime: Int64?
        
        /// 文件大小范围 开始 单位byte
        public let startFileSize: Int64?
        
        /// 文件大小范围 结束 单位byte
        public let endFileSize: Int64?
        
        /// 录制状态 99: 录制方已经回写状态 1: 开始录制了，等待回写 2: 已经到了时间模板的停止时间，在等待录制方回写
        public let isRecording: Int64?
        
        /// 通道ID默认必传
        public let channelId: String?
        
        /// 录制计划ID
        public let planId: String?
        
        /// 场景ID
        public let sceneId: Int64?
        
        /// 告警ID
        public let warnId: Int64?
        
        /// 录制类型 1: 联动计划录制 2: 告警录制
        public let recordType: [Int64]?
        
        public init (offset: Int64, limit: Int64, startTime: Int64? = nil, endTime: Int64? = nil, deviceId: String? = nil, startRecordTime: Int64? = nil, endRecordTime: Int64? = nil, startExpireTime: Int64? = nil, endExpireTime: Int64? = nil, startFileSize: Int64? = nil, endFileSize: Int64? = nil, isRecording: Int64? = nil, channelId: String? = nil, planId: String? = nil, sceneId: Int64? = nil, warnId: Int64? = nil, recordType: [Int64]? = nil) {
            self.offset = offset
            self.limit = limit
            self.startTime = startTime
            self.endTime = endTime
            self.deviceId = deviceId
            self.startRecordTime = startRecordTime
            self.endRecordTime = endRecordTime
            self.startExpireTime = startExpireTime
            self.endExpireTime = endExpireTime
            self.startFileSize = startFileSize
            self.endFileSize = endFileSize
            self.isRecording = isRecording
            self.channelId = channelId
            self.planId = planId
            self.sceneId = sceneId
            self.warnId = warnId
            self.recordType = recordType
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case deviceId = "DeviceId"
            case startRecordTime = "StartRecordTime"
            case endRecordTime = "EndRecordTime"
            case startExpireTime = "StartExpireTime"
            case endExpireTime = "EndExpireTime"
            case startFileSize = "StartFileSize"
            case endFileSize = "EndFileSize"
            case isRecording = "IsRecording"
            case channelId = "ChannelId"
            case planId = "PlanId"
            case sceneId = "SceneId"
            case warnId = "WarnId"
            case recordType = "RecordType"
        }
    }
    
    /// DescribeVideoList返回参数结构体
    public struct DescribeVideoListResponse: TCResponseModel {
        /// 总数
        public let totalCount: Int64
        
        /// 已废弃
        public let videoList: RecordTaskItem
        
        /// 录像详情列表
        public let recordList: [RecordTaskItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case videoList = "VideoList"
            case recordList = "RecordList"
            case requestId = "RequestId"
        }
    }
    
    /// 获取云端录制文件列表
    ///
    /// 根据时间获取云端录制文件列表
    @inlinable
    public func describeVideoList(_ input: DescribeVideoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVideoListResponse > {
        self.client.execute(action: "DescribeVideoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取云端录制文件列表
    ///
    /// 根据时间获取云端录制文件列表
    @inlinable
    public func describeVideoList(_ input: DescribeVideoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoListResponse {
        try await self.client.execute(action: "DescribeVideoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
