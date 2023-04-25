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

extension Cms {
    /// CreateTextSample请求参数结构体
    public struct CreateTextSampleRequest: TCRequestModel {
        /// 关键词数组
        public let contents: [String]

        /// 恶意类型
        /// 100：正常
        /// 20001：政治
        /// 20002：色情
        /// 20006：涉毒违法
        /// 20007：谩骂
        /// 24001：暴恐
        /// 20105：广告引流
        public let evilType: Int64

        /// 样本类型
        /// 1：黑库
        /// 2：白库
        public let label: UInt64

        /// 测试修改参数
        public let test: String?

        public init(contents: [String], evilType: Int64, label: UInt64, test: String? = nil) {
            self.contents = contents
            self.evilType = evilType
            self.label = label
            self.test = test
        }

        enum CodingKeys: String, CodingKey {
            case contents = "Contents"
            case evilType = "EvilType"
            case label = "Label"
            case test = "Test"
        }
    }

    /// CreateTextSample返回参数结构体
    public struct CreateTextSampleResponse: TCResponseModel {
        /// 操作样本失败时返回的错误信息示例：  "样本1":错误码，"样本2":错误码
        public let errMsg: String

        /// 任务状态
        /// 1：已完成
        /// 2：处理中
        public let progress: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMsg = "ErrMsg"
            case progress = "Progress"
            case requestId = "RequestId"
        }
    }

    /// 新增文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将文本新增到样本库。
    @inlinable
    public func createTextSample(_ input: CreateTextSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTextSampleResponse> {
        self.client.execute(action: "CreateTextSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将文本新增到样本库。
    @inlinable
    public func createTextSample(_ input: CreateTextSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTextSampleResponse {
        try await self.client.execute(action: "CreateTextSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将文本新增到样本库。
    @inlinable
    public func createTextSample(contents: [String], evilType: Int64, label: UInt64, test: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTextSampleResponse> {
        self.createTextSample(.init(contents: contents, evilType: evilType, label: label, test: test), region: region, logger: logger, on: eventLoop)
    }

    /// 新增文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将文本新增到样本库。
    @inlinable
    public func createTextSample(contents: [String], evilType: Int64, label: UInt64, test: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTextSampleResponse {
        try await self.createTextSample(.init(contents: contents, evilType: evilType, label: label, test: test), region: region, logger: logger, on: eventLoop)
    }
}
