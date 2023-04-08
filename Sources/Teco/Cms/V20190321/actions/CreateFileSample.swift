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

import TecoCore

extension Cms {
    /// CreateFileSample请求参数结构体
    public struct CreateFileSampleRequest: TCRequestModel {
        /// 文件类型结构数组
        public let contents: [FileSample]

        /// 恶意类型
        /// 100：正常
        /// 20001：政治
        /// 20002：色情
        /// 20006：涉毒违法
        /// 20007：谩骂
        /// 24001：暴恐
        /// 20105：广告引流
        public let evilType: Int64

        /// image：图片
        public let fileType: String

        /// 样本类型
        /// 1：黑库
        /// 2：白库
        public let label: UInt64

        public init(contents: [FileSample], evilType: Int64, fileType: String, label: UInt64) {
            self.contents = contents
            self.evilType = evilType
            self.fileType = fileType
            self.label = label
        }

        enum CodingKeys: String, CodingKey {
            case contents = "Contents"
            case evilType = "EvilType"
            case fileType = "FileType"
            case label = "Label"
        }
    }

    /// CreateFileSample返回参数结构体
    public struct CreateFileSampleResponse: TCResponseModel {
        /// 任务状态
        /// 1：已完成
        /// 2：处理中
        public let progress: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case progress = "Progress"
            case requestId = "RequestId"
        }
    }

    /// 新增图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将图片新增到样本库。
    @inlinable
    public func createFileSample(_ input: CreateFileSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFileSampleResponse> {
        self.client.execute(action: "CreateFileSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将图片新增到样本库。
    @inlinable
    public func createFileSample(_ input: CreateFileSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileSampleResponse {
        try await self.client.execute(action: "CreateFileSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将图片新增到样本库。
    @inlinable
    public func createFileSample(contents: [FileSample], evilType: Int64, fileType: String, label: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFileSampleResponse> {
        self.createFileSample(.init(contents: contents, evilType: evilType, fileType: fileType, label: label), region: region, logger: logger, on: eventLoop)
    }

    /// 新增图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 通过该接口可以将图片新增到样本库。
    @inlinable
    public func createFileSample(contents: [FileSample], evilType: Int64, fileType: String, label: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileSampleResponse {
        try await self.createFileSample(.init(contents: contents, evilType: evilType, fileType: fileType, label: label), region: region, logger: logger, on: eventLoop)
    }
}
