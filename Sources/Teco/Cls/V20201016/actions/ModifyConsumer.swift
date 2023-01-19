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

extension Cls {
    /// ModifyConsumer请求参数结构体
    public struct ModifyConsumerRequest: TCRequestModel {
        /// 投递任务绑定的日志主题 ID
        public let topicId: String

        /// 投递任务是否生效，默认不生效
        public let effective: Bool?

        /// 是否投递日志的元数据信息，默认为 false
        public let needContent: Bool?

        /// 如果需要投递元数据信息，元数据信息的描述
        public let content: ConsumerContent?

        /// CKafka的描述
        public let ckafka: Ckafka?

        /// 投递时压缩方式，取值0，2，3。[0:NONE；2:SNAPPY；3:LZ4]
        public let compression: Int64?

        public init(topicId: String, effective: Bool? = nil, needContent: Bool? = nil, content: ConsumerContent? = nil, ckafka: Ckafka? = nil, compression: Int64? = nil) {
            self.topicId = topicId
            self.effective = effective
            self.needContent = needContent
            self.content = content
            self.ckafka = ckafka
            self.compression = compression
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case effective = "Effective"
            case needContent = "NeedContent"
            case content = "Content"
            case ckafka = "Ckafka"
            case compression = "Compression"
        }
    }

    /// ModifyConsumer返回参数结构体
    public struct ModifyConsumerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改投递任务
    ///
    /// 本接口用于修改投递任务
    @inlinable
    public func modifyConsumer(_ input: ModifyConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConsumerResponse> {
        self.client.execute(action: "ModifyConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改投递任务
    ///
    /// 本接口用于修改投递任务
    @inlinable
    public func modifyConsumer(_ input: ModifyConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConsumerResponse {
        try await self.client.execute(action: "ModifyConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改投递任务
    ///
    /// 本接口用于修改投递任务
    @inlinable
    public func modifyConsumer(topicId: String, effective: Bool? = nil, needContent: Bool? = nil, content: ConsumerContent? = nil, ckafka: Ckafka? = nil, compression: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConsumerResponse> {
        self.modifyConsumer(ModifyConsumerRequest(topicId: topicId, effective: effective, needContent: needContent, content: content, ckafka: ckafka, compression: compression), region: region, logger: logger, on: eventLoop)
    }

    /// 修改投递任务
    ///
    /// 本接口用于修改投递任务
    @inlinable
    public func modifyConsumer(topicId: String, effective: Bool? = nil, needContent: Bool? = nil, content: ConsumerContent? = nil, ckafka: Ckafka? = nil, compression: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConsumerResponse {
        try await self.modifyConsumer(ModifyConsumerRequest(topicId: topicId, effective: effective, needContent: needContent, content: content, ckafka: ckafka, compression: compression), region: region, logger: logger, on: eventLoop)
    }
}
