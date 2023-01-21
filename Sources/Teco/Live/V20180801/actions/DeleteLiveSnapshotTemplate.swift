//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Live {
    /// DeleteLiveSnapshotTemplate请求参数结构体
    public struct DeleteLiveSnapshotTemplateRequest: TCRequestModel {
        /// 模板 ID。
        /// 1. 在创建截图模板接口 [CreateLiveSnapshotTemplate](/document/product/267/32624) 调用的返回值中获取。
        /// 2. 可以从接口 [DescribeLiveSnapshotTemplates](/document/product/267/32619) 中查询已创建的截图模板列表。
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeleteLiveSnapshotTemplate返回参数结构体
    public struct DeleteLiveSnapshotTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除截图模板
    @inlinable @discardableResult
    public func deleteLiveSnapshotTemplate(_ input: DeleteLiveSnapshotTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLiveSnapshotTemplateResponse> {
        self.client.execute(action: "DeleteLiveSnapshotTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除截图模板
    @inlinable @discardableResult
    public func deleteLiveSnapshotTemplate(_ input: DeleteLiveSnapshotTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveSnapshotTemplateResponse {
        try await self.client.execute(action: "DeleteLiveSnapshotTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除截图模板
    @inlinable @discardableResult
    public func deleteLiveSnapshotTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLiveSnapshotTemplateResponse> {
        self.deleteLiveSnapshotTemplate(DeleteLiveSnapshotTemplateRequest(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除截图模板
    @inlinable @discardableResult
    public func deleteLiveSnapshotTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveSnapshotTemplateResponse {
        try await self.deleteLiveSnapshotTemplate(DeleteLiveSnapshotTemplateRequest(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
