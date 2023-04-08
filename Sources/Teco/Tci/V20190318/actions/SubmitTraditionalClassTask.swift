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
    /// SubmitTraditionalClassTask请求参数结构体
    public struct SubmitTraditionalClassTaskRequest: TCRequestModel {
        /// 输入分析对象内容，输入数据格式参考FileType参数释义
        public let fileContent: String

        /// 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，picture：图片二进制数据的BASE64编码
        public let fileType: String

        /// 查询人员库列表，可填写学生们的注册照所在人员库
        public let librarySet: [String]?

        /// 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        public let maxVideoDuration: Int64?

        public init(fileContent: String, fileType: String, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil) {
            self.fileContent = fileContent
            self.fileType = fileType
            self.librarySet = librarySet
            self.maxVideoDuration = maxVideoDuration
        }

        enum CodingKeys: String, CodingKey {
            case fileContent = "FileContent"
            case fileType = "FileType"
            case librarySet = "LibrarySet"
            case maxVideoDuration = "MaxVideoDuration"
        }
    }

    /// SubmitTraditionalClassTask返回参数结构体
    public struct SubmitTraditionalClassTaskResponse: TCResponseModel {
        /// 图像任务直接返回结果，包括： ActionInfo、FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、 TimeInfo
        public let imageResults: [ImageTaskResult]

        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageResults = "ImageResults"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 提交传统面授大班课（含课桌）任务
    ///
    /// **提交线下传统面授大班课（含课桌）任务。**
    /// 传统教室课堂是指有学生课堂有课桌的课堂，满座20-50人，全局画面且背景不动。
    ///
    /// **提供的功能接口有：**学生人脸识别、学生表情识别、学生肢体动作识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、举手、站立、坐着、趴桌子、玩手机等
    ///
    /// **对场景的要求为：**传统的学生上课教室，满座20-50人，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。
    ///
    /// **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。
    @inlinable
    public func submitTraditionalClassTask(_ input: SubmitTraditionalClassTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitTraditionalClassTaskResponse> {
        self.client.execute(action: "SubmitTraditionalClassTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交传统面授大班课（含课桌）任务
    ///
    /// **提交线下传统面授大班课（含课桌）任务。**
    /// 传统教室课堂是指有学生课堂有课桌的课堂，满座20-50人，全局画面且背景不动。
    ///
    /// **提供的功能接口有：**学生人脸识别、学生表情识别、学生肢体动作识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、举手、站立、坐着、趴桌子、玩手机等
    ///
    /// **对场景的要求为：**传统的学生上课教室，满座20-50人，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。
    ///
    /// **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。
    @inlinable
    public func submitTraditionalClassTask(_ input: SubmitTraditionalClassTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitTraditionalClassTaskResponse {
        try await self.client.execute(action: "SubmitTraditionalClassTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交传统面授大班课（含课桌）任务
    ///
    /// **提交线下传统面授大班课（含课桌）任务。**
    /// 传统教室课堂是指有学生课堂有课桌的课堂，满座20-50人，全局画面且背景不动。
    ///
    /// **提供的功能接口有：**学生人脸识别、学生表情识别、学生肢体动作识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、举手、站立、坐着、趴桌子、玩手机等
    ///
    /// **对场景的要求为：**传统的学生上课教室，满座20-50人，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。
    ///
    /// **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。
    @inlinable
    public func submitTraditionalClassTask(fileContent: String, fileType: String, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitTraditionalClassTaskResponse> {
        self.submitTraditionalClassTask(.init(fileContent: fileContent, fileType: fileType, librarySet: librarySet, maxVideoDuration: maxVideoDuration), region: region, logger: logger, on: eventLoop)
    }

    /// 提交传统面授大班课（含课桌）任务
    ///
    /// **提交线下传统面授大班课（含课桌）任务。**
    /// 传统教室课堂是指有学生课堂有课桌的课堂，满座20-50人，全局画面且背景不动。
    ///
    /// **提供的功能接口有：**学生人脸识别、学生表情识别、学生肢体动作识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、举手、站立、坐着、趴桌子、玩手机等
    ///
    /// **对场景的要求为：**传统的学生上课教室，满座20-50人，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。
    ///
    /// **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。
    @inlinable
    public func submitTraditionalClassTask(fileContent: String, fileType: String, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitTraditionalClassTaskResponse {
        try await self.submitTraditionalClassTask(.init(fileContent: fileContent, fileType: fileType, librarySet: librarySet, maxVideoDuration: maxVideoDuration), region: region, logger: logger, on: eventLoop)
    }
}
