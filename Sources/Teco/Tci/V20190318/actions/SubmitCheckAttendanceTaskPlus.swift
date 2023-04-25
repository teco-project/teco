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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tci {
    /// SubmitCheckAttendanceTaskPlus请求参数结构体
    public struct SubmitCheckAttendanceTaskPlusRequest: TCRequestModel {
        /// 输入数据
        public let fileContent: [String]

        /// 视频流类型，vod_url表示点播URL，live_url表示直播URL，默认vod_url
        public let fileType: String

        /// 人员库 ID列表
        public let libraryIds: [String]

        /// 确定出勤阈值；默认为0.92
        public let attendanceThreshold: Float?

        /// 是否开启陌生人模式，陌生人模式是指在任务中发现的非注册人脸库中的人脸也返回相关统计信息，默认不开启
        public let enableStranger: Bool?

        /// 考勤结束时间（到视频的第几秒结束考勤），单位秒；默认为900
        /// 对于直播场景，使用绝对时间戳，单位秒，默认当前时间往后12小时
        public let endTime: Int64?

        /// 通知回调地址，要求方法为post，application/json格式
        public let noticeUrl: String?

        /// 考勤开始时间（从视频的第几秒开始考勤），单位秒；默认为0
        /// 对于直播场景，使用绝对时间戳，单位秒，默认当前时间
        public let startTime: Int64?

        /// 识别阈值；默认为0.8
        public let threshold: Float?

        public init(fileContent: [String], fileType: String, libraryIds: [String], attendanceThreshold: Float? = nil, enableStranger: Bool? = nil, endTime: Int64? = nil, noticeUrl: String? = nil, startTime: Int64? = nil, threshold: Float? = nil) {
            self.fileContent = fileContent
            self.fileType = fileType
            self.libraryIds = libraryIds
            self.attendanceThreshold = attendanceThreshold
            self.enableStranger = enableStranger
            self.endTime = endTime
            self.noticeUrl = noticeUrl
            self.startTime = startTime
            self.threshold = threshold
        }

        enum CodingKeys: String, CodingKey {
            case fileContent = "FileContent"
            case fileType = "FileType"
            case libraryIds = "LibraryIds"
            case attendanceThreshold = "AttendanceThreshold"
            case enableStranger = "EnableStranger"
            case endTime = "EndTime"
            case noticeUrl = "NoticeUrl"
            case startTime = "StartTime"
            case threshold = "Threshold"
        }
    }

    /// SubmitCheckAttendanceTaskPlus返回参数结构体
    public struct SubmitCheckAttendanceTaskPlusResponse: TCResponseModel {
        /// 任务标识符
        public let jobId: Int64

        /// 没有注册的人的ID列表
        public let notRegisteredSet: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case notRegisteredSet = "NotRegisteredSet"
            case requestId = "RequestId"
        }
    }

    /// 提交高级人员考勤任务
    ///
    /// 支持多路视频流，提交高级人员考勤任务
    @inlinable
    public func submitCheckAttendanceTaskPlus(_ input: SubmitCheckAttendanceTaskPlusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCheckAttendanceTaskPlusResponse> {
        self.client.execute(action: "SubmitCheckAttendanceTaskPlus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交高级人员考勤任务
    ///
    /// 支持多路视频流，提交高级人员考勤任务
    @inlinable
    public func submitCheckAttendanceTaskPlus(_ input: SubmitCheckAttendanceTaskPlusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCheckAttendanceTaskPlusResponse {
        try await self.client.execute(action: "SubmitCheckAttendanceTaskPlus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交高级人员考勤任务
    ///
    /// 支持多路视频流，提交高级人员考勤任务
    @inlinable
    public func submitCheckAttendanceTaskPlus(fileContent: [String], fileType: String, libraryIds: [String], attendanceThreshold: Float? = nil, enableStranger: Bool? = nil, endTime: Int64? = nil, noticeUrl: String? = nil, startTime: Int64? = nil, threshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCheckAttendanceTaskPlusResponse> {
        self.submitCheckAttendanceTaskPlus(.init(fileContent: fileContent, fileType: fileType, libraryIds: libraryIds, attendanceThreshold: attendanceThreshold, enableStranger: enableStranger, endTime: endTime, noticeUrl: noticeUrl, startTime: startTime, threshold: threshold), region: region, logger: logger, on: eventLoop)
    }

    /// 提交高级人员考勤任务
    ///
    /// 支持多路视频流，提交高级人员考勤任务
    @inlinable
    public func submitCheckAttendanceTaskPlus(fileContent: [String], fileType: String, libraryIds: [String], attendanceThreshold: Float? = nil, enableStranger: Bool? = nil, endTime: Int64? = nil, noticeUrl: String? = nil, startTime: Int64? = nil, threshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCheckAttendanceTaskPlusResponse {
        try await self.submitCheckAttendanceTaskPlus(.init(fileContent: fileContent, fileType: fileType, libraryIds: libraryIds, attendanceThreshold: attendanceThreshold, enableStranger: enableStranger, endTime: endTime, noticeUrl: noticeUrl, startTime: startTime, threshold: threshold), region: region, logger: logger, on: eventLoop)
    }
}
