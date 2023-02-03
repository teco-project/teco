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

extension Tmt {
    /// GetFileTranslate请求参数结构体
    public struct GetFileTranslateRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// GetFileTranslate返回参数结构体
    public struct GetFileTranslateResponse: TCResponseModel {
        /// 任务id
        public let data: GetFileTranslateData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 文件翻译结果查询
    ///
    /// 在调用文档翻译请求接口后，有回调和轮询两种方式获取识别结果。
    /// •当采用回调方式时，翻译完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见文档翻译结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见参数说明。
    @inlinable
    public func getFileTranslate(_ input: GetFileTranslateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFileTranslateResponse> {
        self.client.execute(action: "GetFileTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件翻译结果查询
    ///
    /// 在调用文档翻译请求接口后，有回调和轮询两种方式获取识别结果。
    /// •当采用回调方式时，翻译完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见文档翻译结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见参数说明。
    @inlinable
    public func getFileTranslate(_ input: GetFileTranslateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFileTranslateResponse {
        try await self.client.execute(action: "GetFileTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文件翻译结果查询
    ///
    /// 在调用文档翻译请求接口后，有回调和轮询两种方式获取识别结果。
    /// •当采用回调方式时，翻译完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见文档翻译结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见参数说明。
    @inlinable
    public func getFileTranslate(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFileTranslateResponse> {
        let input = GetFileTranslateRequest(taskId: taskId)
        return self.client.execute(action: "GetFileTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件翻译结果查询
    ///
    /// 在调用文档翻译请求接口后，有回调和轮询两种方式获取识别结果。
    /// •当采用回调方式时，翻译完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见文档翻译结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见参数说明。
    @inlinable
    public func getFileTranslate(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFileTranslateResponse {
        let input = GetFileTranslateRequest(taskId: taskId)
        return try await self.client.execute(action: "GetFileTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
