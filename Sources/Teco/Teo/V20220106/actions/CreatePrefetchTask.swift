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

extension Teo {
    /// CreatePrefetchTask请求参数结构体
    public struct CreatePrefetchTaskRequest: TCRequestModel {
        /// Zone ID
        public let zoneId: String

        /// 要预热的资源列表，每个元素格式类似如下:
        /// http://www.example.com/example.txt
        public let targets: [String]?

        /// 是否对url进行encode
        /// 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        public let encodeUrl: Bool?

        /// 附带的http头部信息
        public let headers: [Header]?

        public init(zoneId: String, targets: [String]? = nil, encodeUrl: Bool? = nil, headers: [Header]? = nil) {
            self.zoneId = zoneId
            self.targets = targets
            self.encodeUrl = encodeUrl
            self.headers = headers
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case targets = "Targets"
            case encodeUrl = "EncodeUrl"
            case headers = "Headers"
        }
    }

    /// CreatePrefetchTask返回参数结构体
    public struct CreatePrefetchTaskResponse: TCResponseModel {
        /// 任务ID
        public let jobId: String

        /// 失败的任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedList: [FailReason]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case failedList = "FailedList"
            case requestId = "RequestId"
        }
    }

    /// 创建预热任务
    @inlinable
    public func createPrefetchTask(_ input: CreatePrefetchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrefetchTaskResponse> {
        self.client.execute(action: "CreatePrefetchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建预热任务
    @inlinable
    public func createPrefetchTask(_ input: CreatePrefetchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrefetchTaskResponse {
        try await self.client.execute(action: "CreatePrefetchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建预热任务
    @inlinable
    public func createPrefetchTask(zoneId: String, targets: [String]? = nil, encodeUrl: Bool? = nil, headers: [Header]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrefetchTaskResponse> {
        self.createPrefetchTask(.init(zoneId: zoneId, targets: targets, encodeUrl: encodeUrl, headers: headers), region: region, logger: logger, on: eventLoop)
    }

    /// 创建预热任务
    @inlinable
    public func createPrefetchTask(zoneId: String, targets: [String]? = nil, encodeUrl: Bool? = nil, headers: [Header]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrefetchTaskResponse {
        try await self.createPrefetchTask(.init(zoneId: zoneId, targets: targets, encodeUrl: encodeUrl, headers: headers), region: region, logger: logger, on: eventLoop)
    }
}
