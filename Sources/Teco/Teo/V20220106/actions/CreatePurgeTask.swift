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

extension Teo {
    /// CreatePurgeTask请求参数结构体
    public struct CreatePurgeTaskRequest: TCRequestModel {
        /// Zone ID
        public let zoneId: String

        /// 类型，当前支持的类型：
        /// - purge_url：URL
        /// - purge_prefix：前缀
        /// - purge_host：Hostname
        /// - purge_all：全部缓存
        public let type: String

        /// 要刷新的资源列表，每个元素格式依据Type而定
        /// 1) Type = purge_host 时
        /// 形如：www.example.com 或 foo.bar.example.com
        /// 2) Type = purge_prefix 时
        /// 形如：http://www.example.com/example
        /// 3) Type = purge_url 时
        /// 形如：https://www.example.com/example.jpg
        /// 4）Type = purge_all 时
        /// Targets可为空，不需要填写
        public let targets: [String]?

        /// 若有编码转换，仅清除编码转换后匹配的资源
        /// 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        public let encodeUrl: Bool?

        public init(zoneId: String, type: String, targets: [String]? = nil, encodeUrl: Bool? = nil) {
            self.zoneId = zoneId
            self.type = type
            self.targets = targets
            self.encodeUrl = encodeUrl
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case type = "Type"
            case targets = "Targets"
            case encodeUrl = "EncodeUrl"
        }
    }

    /// CreatePurgeTask返回参数结构体
    public struct CreatePurgeTaskResponse: TCResponseModel {
        /// 任务ID
        public let jobId: String

        /// 失败的任务列表及原因
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

    /// 创建清除缓存任务
    @inlinable
    public func createPurgeTask(_ input: CreatePurgeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePurgeTaskResponse> {
        self.client.execute(action: "CreatePurgeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建清除缓存任务
    @inlinable
    public func createPurgeTask(_ input: CreatePurgeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePurgeTaskResponse {
        try await self.client.execute(action: "CreatePurgeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建清除缓存任务
    @inlinable
    public func createPurgeTask(zoneId: String, type: String, targets: [String]? = nil, encodeUrl: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePurgeTaskResponse> {
        self.createPurgeTask(CreatePurgeTaskRequest(zoneId: zoneId, type: type, targets: targets, encodeUrl: encodeUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建清除缓存任务
    @inlinable
    public func createPurgeTask(zoneId: String, type: String, targets: [String]? = nil, encodeUrl: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePurgeTaskResponse {
        try await self.createPurgeTask(CreatePurgeTaskRequest(zoneId: zoneId, type: type, targets: targets, encodeUrl: encodeUrl), region: region, logger: logger, on: eventLoop)
    }
}
