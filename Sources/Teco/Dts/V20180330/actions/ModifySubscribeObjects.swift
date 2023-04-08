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

extension Dts {
    /// ModifySubscribeObjects请求参数结构体
    public struct ModifySubscribeObjectsRequest: TCRequestModel {
        /// 数据订阅实例的ID
        public let subscribeId: String

        /// 数据订阅的类型，可选的值有：0 - 全实例订阅；1 - 数据订阅；2 - 结构订阅；3 - 数据订阅+结构订阅
        public let subscribeObjectType: Int64

        /// 订阅的数据库表信息
        public let objects: [SubscribeObject]?

        public init(subscribeId: String, subscribeObjectType: Int64, objects: [SubscribeObject]? = nil) {
            self.subscribeId = subscribeId
            self.subscribeObjectType = subscribeObjectType
            self.objects = objects
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case subscribeObjectType = "SubscribeObjectType"
            case objects = "Objects"
        }
    }

    /// ModifySubscribeObjects返回参数结构体
    public struct ModifySubscribeObjectsResponse: TCResponseModel {
        /// 异步任务的ID
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 修改数据订阅通道的订阅规则
    ///
    /// 本接口(ModifySubscribeObjects)用于修改数据订阅通道的订阅规则
    @inlinable
    public func modifySubscribeObjects(_ input: ModifySubscribeObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeObjectsResponse> {
        self.client.execute(action: "ModifySubscribeObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅通道的订阅规则
    ///
    /// 本接口(ModifySubscribeObjects)用于修改数据订阅通道的订阅规则
    @inlinable
    public func modifySubscribeObjects(_ input: ModifySubscribeObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeObjectsResponse {
        try await self.client.execute(action: "ModifySubscribeObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据订阅通道的订阅规则
    ///
    /// 本接口(ModifySubscribeObjects)用于修改数据订阅通道的订阅规则
    @inlinable
    public func modifySubscribeObjects(subscribeId: String, subscribeObjectType: Int64, objects: [SubscribeObject]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeObjectsResponse> {
        self.modifySubscribeObjects(.init(subscribeId: subscribeId, subscribeObjectType: subscribeObjectType, objects: objects), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅通道的订阅规则
    ///
    /// 本接口(ModifySubscribeObjects)用于修改数据订阅通道的订阅规则
    @inlinable
    public func modifySubscribeObjects(subscribeId: String, subscribeObjectType: Int64, objects: [SubscribeObject]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeObjectsResponse {
        try await self.modifySubscribeObjects(.init(subscribeId: subscribeId, subscribeObjectType: subscribeObjectType, objects: objects), region: region, logger: logger, on: eventLoop)
    }
}
