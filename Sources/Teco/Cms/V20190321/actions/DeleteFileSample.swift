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

import Logging
import NIOCore
import TecoCore

extension Cms {
    /// DeleteFileSample请求参数结构体
    public struct DeleteFileSampleRequest: TCRequestModel {
        /// 唯一标识数组
        public let ids: [String]

        public init(ids: [String]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// DeleteFileSample返回参数结构体
    public struct DeleteFileSampleResponse: TCResponseModel {
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

    /// 删除图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 删除图片样本库，支持批量删除，一次提交不超过20个。
    @inlinable
    public func deleteFileSample(_ input: DeleteFileSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFileSampleResponse> {
        self.client.execute(action: "DeleteFileSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 删除图片样本库，支持批量删除，一次提交不超过20个。
    @inlinable
    public func deleteFileSample(_ input: DeleteFileSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFileSampleResponse {
        try await self.client.execute(action: "DeleteFileSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 删除图片样本库，支持批量删除，一次提交不超过20个。
    @inlinable
    public func deleteFileSample(ids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFileSampleResponse> {
        self.deleteFileSample(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 删除图片样本库
    ///
    /// 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
    /// <br>
    /// 删除图片样本库，支持批量删除，一次提交不超过20个。
    @inlinable
    public func deleteFileSample(ids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFileSampleResponse {
        try await self.deleteFileSample(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
