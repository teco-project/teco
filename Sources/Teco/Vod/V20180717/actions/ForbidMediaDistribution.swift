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

extension Vod {
    /// ForbidMediaDistribution请求参数结构体
    public struct ForbidMediaDistributionRequest: TCRequestModel {
        /// 媒体文件列表，每次最多可提交 20 条。
        public let fileIds: [String]

        /// forbid：禁播，recover：解禁。
        public let operation: String

        /// <b>点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(fileIds: [String], operation: String, subAppId: UInt64? = nil) {
            self.fileIds = fileIds
            self.operation = operation
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case fileIds = "FileIds"
            case operation = "Operation"
            case subAppId = "SubAppId"
        }
    }

    /// ForbidMediaDistribution返回参数结构体
    public struct ForbidMediaDistributionResponse: TCResponseModel {
        /// 不存在的文件 ID 列表。
        public let notExistFileIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notExistFileIdSet = "NotExistFileIdSet"
            case requestId = "RequestId"
        }
    }

    /// 禁播媒体
    ///
    /// * 对媒体禁播后，除了点播控制台预览，其他场景访问视频各种资源的 URL（原始文件、转码输出文件、截图等）均会返回 403。
    ///   禁播/解禁操作全网生效时间约 5~10 分钟。
    @inlinable
    public func forbidMediaDistribution(_ input: ForbidMediaDistributionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForbidMediaDistributionResponse> {
        self.client.execute(action: "ForbidMediaDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁播媒体
    ///
    /// * 对媒体禁播后，除了点播控制台预览，其他场景访问视频各种资源的 URL（原始文件、转码输出文件、截图等）均会返回 403。
    ///   禁播/解禁操作全网生效时间约 5~10 分钟。
    @inlinable
    public func forbidMediaDistribution(_ input: ForbidMediaDistributionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForbidMediaDistributionResponse {
        try await self.client.execute(action: "ForbidMediaDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁播媒体
    ///
    /// * 对媒体禁播后，除了点播控制台预览，其他场景访问视频各种资源的 URL（原始文件、转码输出文件、截图等）均会返回 403。
    ///   禁播/解禁操作全网生效时间约 5~10 分钟。
    @inlinable
    public func forbidMediaDistribution(fileIds: [String], operation: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForbidMediaDistributionResponse> {
        self.forbidMediaDistribution(.init(fileIds: fileIds, operation: operation, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁播媒体
    ///
    /// * 对媒体禁播后，除了点播控制台预览，其他场景访问视频各种资源的 URL（原始文件、转码输出文件、截图等）均会返回 403。
    ///   禁播/解禁操作全网生效时间约 5~10 分钟。
    @inlinable
    public func forbidMediaDistribution(fileIds: [String], operation: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForbidMediaDistributionResponse {
        try await self.forbidMediaDistribution(.init(fileIds: fileIds, operation: operation, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
