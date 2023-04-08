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

extension Tci {
    /// SubmitCheckAttendanceTask请求参数结构体
    public struct SubmitCheckAttendanceTaskRequest: TCRequestModel {
        /// 输入数据
        public let fileContent: String

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

        public init(fileContent: String, fileType: String, libraryIds: [String], attendanceThreshold: Float? = nil, enableStranger: Bool? = nil, endTime: Int64? = nil, noticeUrl: String? = nil, startTime: Int64? = nil, threshold: Float? = nil) {
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

    /// SubmitCheckAttendanceTask返回参数结构体
    public struct SubmitCheckAttendanceTaskResponse: TCResponseModel {
        /// 任务标识符
        public let jobId: Int64

        /// 没有注册的人的ID列表
        public let notRegisteredSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case notRegisteredSet = "NotRegisteredSet"
            case requestId = "RequestId"
        }
    }

    /// 提交人员考勤任务
    ///
    /// 提交人员考勤任务，支持包括点播和直播资源；支持通过DescribeAttendanceResult查询结果，也支持通过NoticeUrl设置考勤回调结果，回调结果结构如下：
    /// ##### 回调事件结构
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | jobid | Integer | 任务ID |
    ///  | person_info | array of PersonInfo | 识别到的人员列表 |
    /// #####子结构PersonInfo
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | traceid | String | 可用于区分同一路视频流下的不同陌生人 |
    ///  | personid | String | 识别到的人员ID，如果是陌生人则返回空串 |
    ///  | libid | String | 识别到的人员所在的库ID，如果是陌生人则返回空串 |
    ///  | timestamp | uint64 | 识别到人脸的绝对时间戳，单位ms |
    ///  | image_url | string | 识别到人脸的事件抓图的下载地址，不长期保存，需要请及时下载 |
    @inlinable
    public func submitCheckAttendanceTask(_ input: SubmitCheckAttendanceTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCheckAttendanceTaskResponse> {
        self.client.execute(action: "SubmitCheckAttendanceTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交人员考勤任务
    ///
    /// 提交人员考勤任务，支持包括点播和直播资源；支持通过DescribeAttendanceResult查询结果，也支持通过NoticeUrl设置考勤回调结果，回调结果结构如下：
    /// ##### 回调事件结构
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | jobid | Integer | 任务ID |
    ///  | person_info | array of PersonInfo | 识别到的人员列表 |
    /// #####子结构PersonInfo
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | traceid | String | 可用于区分同一路视频流下的不同陌生人 |
    ///  | personid | String | 识别到的人员ID，如果是陌生人则返回空串 |
    ///  | libid | String | 识别到的人员所在的库ID，如果是陌生人则返回空串 |
    ///  | timestamp | uint64 | 识别到人脸的绝对时间戳，单位ms |
    ///  | image_url | string | 识别到人脸的事件抓图的下载地址，不长期保存，需要请及时下载 |
    @inlinable
    public func submitCheckAttendanceTask(_ input: SubmitCheckAttendanceTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCheckAttendanceTaskResponse {
        try await self.client.execute(action: "SubmitCheckAttendanceTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交人员考勤任务
    ///
    /// 提交人员考勤任务，支持包括点播和直播资源；支持通过DescribeAttendanceResult查询结果，也支持通过NoticeUrl设置考勤回调结果，回调结果结构如下：
    /// ##### 回调事件结构
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | jobid | Integer | 任务ID |
    ///  | person_info | array of PersonInfo | 识别到的人员列表 |
    /// #####子结构PersonInfo
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | traceid | String | 可用于区分同一路视频流下的不同陌生人 |
    ///  | personid | String | 识别到的人员ID，如果是陌生人则返回空串 |
    ///  | libid | String | 识别到的人员所在的库ID，如果是陌生人则返回空串 |
    ///  | timestamp | uint64 | 识别到人脸的绝对时间戳，单位ms |
    ///  | image_url | string | 识别到人脸的事件抓图的下载地址，不长期保存，需要请及时下载 |
    @inlinable
    public func submitCheckAttendanceTask(fileContent: String, fileType: String, libraryIds: [String], attendanceThreshold: Float? = nil, enableStranger: Bool? = nil, endTime: Int64? = nil, noticeUrl: String? = nil, startTime: Int64? = nil, threshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCheckAttendanceTaskResponse> {
        self.submitCheckAttendanceTask(.init(fileContent: fileContent, fileType: fileType, libraryIds: libraryIds, attendanceThreshold: attendanceThreshold, enableStranger: enableStranger, endTime: endTime, noticeUrl: noticeUrl, startTime: startTime, threshold: threshold), region: region, logger: logger, on: eventLoop)
    }

    /// 提交人员考勤任务
    ///
    /// 提交人员考勤任务，支持包括点播和直播资源；支持通过DescribeAttendanceResult查询结果，也支持通过NoticeUrl设置考勤回调结果，回调结果结构如下：
    /// ##### 回调事件结构
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | jobid | Integer | 任务ID |
    ///  | person_info | array of PersonInfo | 识别到的人员列表 |
    /// #####子结构PersonInfo
    ///  | 参数名称 | 类型 | 描述 |
    ///  | ----  | ---  | ------  |
    ///  | traceid | String | 可用于区分同一路视频流下的不同陌生人 |
    ///  | personid | String | 识别到的人员ID，如果是陌生人则返回空串 |
    ///  | libid | String | 识别到的人员所在的库ID，如果是陌生人则返回空串 |
    ///  | timestamp | uint64 | 识别到人脸的绝对时间戳，单位ms |
    ///  | image_url | string | 识别到人脸的事件抓图的下载地址，不长期保存，需要请及时下载 |
    @inlinable
    public func submitCheckAttendanceTask(fileContent: String, fileType: String, libraryIds: [String], attendanceThreshold: Float? = nil, enableStranger: Bool? = nil, endTime: Int64? = nil, noticeUrl: String? = nil, startTime: Int64? = nil, threshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCheckAttendanceTaskResponse {
        try await self.submitCheckAttendanceTask(.init(fileContent: fileContent, fileType: fileType, libraryIds: libraryIds, attendanceThreshold: attendanceThreshold, enableStranger: enableStranger, endTime: endTime, noticeUrl: noticeUrl, startTime: startTime, threshold: threshold), region: region, logger: logger, on: eventLoop)
    }
}
