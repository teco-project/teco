//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dts {
    /// ModifySubscribeConsumeTime请求参数结构体
    public struct ModifySubscribeConsumeTimeRequest: TCRequestModel {
        /// 数据订阅实例的ID
        public let subscribeId: String

        /// 消费时间起点，也即是指定订阅数据的时间起点，时间格式如：Y-m-d h:m:s，取值范围为过去24小时之内
        public let consumeStartTime: String

        public init(subscribeId: String, consumeStartTime: String) {
            self.subscribeId = subscribeId
            self.consumeStartTime = consumeStartTime
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case consumeStartTime = "ConsumeStartTime"
        }
    }

    /// ModifySubscribeConsumeTime返回参数结构体
    public struct ModifySubscribeConsumeTimeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据订阅实例通道的消费时间点
    ///
    /// 本接口(ModifySubscribeConsumeTime)用于修改数据订阅通道的消费时间点
    @inlinable
    public func modifySubscribeConsumeTime(_ input: ModifySubscribeConsumeTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySubscribeConsumeTimeResponse > {
        self.client.execute(action: "ModifySubscribeConsumeTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅实例通道的消费时间点
    ///
    /// 本接口(ModifySubscribeConsumeTime)用于修改数据订阅通道的消费时间点
    @inlinable
    public func modifySubscribeConsumeTime(_ input: ModifySubscribeConsumeTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeConsumeTimeResponse {
        try await self.client.execute(action: "ModifySubscribeConsumeTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据订阅实例通道的消费时间点
    ///
    /// 本接口(ModifySubscribeConsumeTime)用于修改数据订阅通道的消费时间点
    @inlinable
    public func modifySubscribeConsumeTime(subscribeId: String, consumeStartTime: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySubscribeConsumeTimeResponse > {
        self.modifySubscribeConsumeTime(ModifySubscribeConsumeTimeRequest(subscribeId: subscribeId, consumeStartTime: consumeStartTime), logger: logger, on: eventLoop)
    }

    /// 修改数据订阅实例通道的消费时间点
    ///
    /// 本接口(ModifySubscribeConsumeTime)用于修改数据订阅通道的消费时间点
    @inlinable
    public func modifySubscribeConsumeTime(subscribeId: String, consumeStartTime: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeConsumeTimeResponse {
        try await self.modifySubscribeConsumeTime(ModifySubscribeConsumeTimeRequest(subscribeId: subscribeId, consumeStartTime: consumeStartTime), logger: logger, on: eventLoop)
    }
}
