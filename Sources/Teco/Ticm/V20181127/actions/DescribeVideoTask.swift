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

extension Ticm {
    /// DescribeVideoTask请求参数结构体
    public struct DescribeVideoTaskRequest: TCRequestModel {
        /// 需要查询的视频审核的任务ID
        public let vodTaskId: String

        public init(vodTaskId: String) {
            self.vodTaskId = vodTaskId
        }

        enum CodingKeys: String, CodingKey {
            case vodTaskId = "VodTaskId"
        }
    }

    /// DescribeVideoTask返回参数结构体
    public struct DescribeVideoTaskResponse: TCResponseModel {
        /// 任务状态，取值：
        /// WAITING：等待中；
        /// PROCESSING：处理中；
        /// FINISH：已完成。
        public let status: String

        /// 任务开始执行的时间，采用 ISO 日期格式。
        public let beginProcessTime: String

        /// 任务执行完毕的时间，采用 ISO 日期格式。
        public let finishTime: String

        /// 视频内容审核智能画面鉴黄任务的查询结果。
        public let pornResult: VodPornReviewResult

        /// 视频内容审核智能画面鉴恐任务的查询结果。
        public let terrorismResult: VodTerrorismReviewResult

        /// 视频内容审核智能画面鉴政任务的查询结果。
        public let politicalResult: VodPoliticalReviewResult

        /// 视频内容审核 Ocr 文字鉴政任务的查询结果。
        public let politicalOcrResult: VodPoliticalOcrReviewResult

        /// 视频内容审核 Asr 文字鉴黄任务的查询结果。
        public let pornAsrResult: VodPornAsrReviewResult

        /// 视频内容审核 Asr 文字鉴政任务的查询结果。
        public let politicalAsrResult: VodPoliticalAsrReviewResult

        /// 视频内容审核 Ocr 文字鉴黄任务的查询结果。
        public let pornOcrResult: VodPornOcrResult

        /// 原始视频的元信息。
        public let metaData: VodMetaData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case beginProcessTime = "BeginProcessTime"
            case finishTime = "FinishTime"
            case pornResult = "PornResult"
            case terrorismResult = "TerrorismResult"
            case politicalResult = "PoliticalResult"
            case politicalOcrResult = "PoliticalOcrResult"
            case pornAsrResult = "PornAsrResult"
            case politicalAsrResult = "PoliticalAsrResult"
            case pornOcrResult = "PornOcrResult"
            case metaData = "MetaData"
            case requestId = "RequestId"
        }
    }

    /// 查询视频内容审核的结果
    ///
    /// 提交完视频审核任务后，可以通过本接口来获取当前处理的进度和结果
    @inlinable
    public func describeVideoTask(_ input: DescribeVideoTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoTaskResponse> {
        self.client.execute(action: "DescribeVideoTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询视频内容审核的结果
    ///
    /// 提交完视频审核任务后，可以通过本接口来获取当前处理的进度和结果
    @inlinable
    public func describeVideoTask(_ input: DescribeVideoTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoTaskResponse {
        try await self.client.execute(action: "DescribeVideoTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询视频内容审核的结果
    ///
    /// 提交完视频审核任务后，可以通过本接口来获取当前处理的进度和结果
    @inlinable
    public func describeVideoTask(vodTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoTaskResponse> {
        self.describeVideoTask(.init(vodTaskId: vodTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询视频内容审核的结果
    ///
    /// 提交完视频审核任务后，可以通过本接口来获取当前处理的进度和结果
    @inlinable
    public func describeVideoTask(vodTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoTaskResponse {
        try await self.describeVideoTask(.init(vodTaskId: vodTaskId), region: region, logger: logger, on: eventLoop)
    }
}
