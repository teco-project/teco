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
    /// SubmitImageTaskPlus请求参数结构体
    public struct SubmitImageTaskPlusRequest: TCRequestModel {
        /// 输入分析对象内容，输入数据格式参考FileType参数释义
        public let fileContent: [String]

        /// 输入分析对象类型，picture：二进制图片的 base64 编码字符串，picture_url:图片地址，vod_url：视频地址，live_url：直播地址
        public let fileType: String

        /// 任务控制选项
        public let functions: ImageTaskFunction?

        /// 光照标准列表
        public let lightStandardSet: [LightStandard]?

        /// 抽帧的时间间隔，单位毫秒，默认值1000，保留字段，当前不支持填写。
        public let frameInterval: Int64?

        /// 查询人员库列表
        public let librarySet: [String]?

        /// 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        public let maxVideoDuration: Int64?

        /// 人脸识别中的相似度阈值，默认值为0.89，保留字段，当前不支持填写。
        public let simThreshold: Float?

        public init(fileContent: [String], fileType: String, functions: ImageTaskFunction? = nil, lightStandardSet: [LightStandard]? = nil, frameInterval: Int64? = nil, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil, simThreshold: Float? = nil) {
            self.fileContent = fileContent
            self.fileType = fileType
            self.functions = functions
            self.lightStandardSet = lightStandardSet
            self.frameInterval = frameInterval
            self.librarySet = librarySet
            self.maxVideoDuration = maxVideoDuration
            self.simThreshold = simThreshold
        }

        enum CodingKeys: String, CodingKey {
            case fileContent = "FileContent"
            case fileType = "FileType"
            case functions = "Functions"
            case lightStandardSet = "LightStandardSet"
            case frameInterval = "FrameInterval"
            case librarySet = "LibrarySet"
            case maxVideoDuration = "MaxVideoDuration"
            case simThreshold = "SimThreshold"
        }
    }

    /// SubmitImageTaskPlus返回参数结构体
    public struct SubmitImageTaskPlusResponse: TCResponseModel {
        /// 识别结果
        public let resultSet: [ImageTaskResult]

        /// 任务标识符
        public let jobId: Int64

        /// 任务进度
        public let progress: Int64

        /// 结果总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultSet = "ResultSet"
            case jobId = "JobId"
            case progress = "Progress"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 提交高级图像分析任务
    ///
    /// 高级图像分析任务，开放了图像任务里的所有开关，可以根据场景深度定制图像分析任务。支持的图像类别有，图片链接、图片二进制数据、点播链接和直播链接。
    @inlinable
    public func submitImageTaskPlus(_ input: SubmitImageTaskPlusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitImageTaskPlusResponse> {
        self.client.execute(action: "SubmitImageTaskPlus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交高级图像分析任务
    ///
    /// 高级图像分析任务，开放了图像任务里的所有开关，可以根据场景深度定制图像分析任务。支持的图像类别有，图片链接、图片二进制数据、点播链接和直播链接。
    @inlinable
    public func submitImageTaskPlus(_ input: SubmitImageTaskPlusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitImageTaskPlusResponse {
        try await self.client.execute(action: "SubmitImageTaskPlus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交高级图像分析任务
    ///
    /// 高级图像分析任务，开放了图像任务里的所有开关，可以根据场景深度定制图像分析任务。支持的图像类别有，图片链接、图片二进制数据、点播链接和直播链接。
    @inlinable
    public func submitImageTaskPlus(fileContent: [String], fileType: String, functions: ImageTaskFunction? = nil, lightStandardSet: [LightStandard]? = nil, frameInterval: Int64? = nil, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil, simThreshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitImageTaskPlusResponse> {
        let input = SubmitImageTaskPlusRequest(fileContent: fileContent, fileType: fileType, functions: functions, lightStandardSet: lightStandardSet, frameInterval: frameInterval, librarySet: librarySet, maxVideoDuration: maxVideoDuration, simThreshold: simThreshold)
        return self.client.execute(action: "SubmitImageTaskPlus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交高级图像分析任务
    ///
    /// 高级图像分析任务，开放了图像任务里的所有开关，可以根据场景深度定制图像分析任务。支持的图像类别有，图片链接、图片二进制数据、点播链接和直播链接。
    @inlinable
    public func submitImageTaskPlus(fileContent: [String], fileType: String, functions: ImageTaskFunction? = nil, lightStandardSet: [LightStandard]? = nil, frameInterval: Int64? = nil, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil, simThreshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitImageTaskPlusResponse {
        let input = SubmitImageTaskPlusRequest(fileContent: fileContent, fileType: fileType, functions: functions, lightStandardSet: lightStandardSet, frameInterval: frameInterval, librarySet: librarySet, maxVideoDuration: maxVideoDuration, simThreshold: simThreshold)
        return try await self.client.execute(action: "SubmitImageTaskPlus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
