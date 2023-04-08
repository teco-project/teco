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

extension Antiddos {
    /// CreateDDoSAI请求参数结构体
    public struct CreateDDoSAIRequest: TCRequestModel {
        /// 资源实例ID列表
        public let instanceIdList: [String]

        /// AI防护开关，取值[
        /// on(开启)
        /// off(关闭)
        /// ]
        public let dDoSAI: String

        public init(instanceIdList: [String], dDoSAI: String) {
            self.instanceIdList = instanceIdList
            self.dDoSAI = dDoSAI
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdList = "InstanceIdList"
            case dDoSAI = "DDoSAI"
        }
    }

    /// CreateDDoSAI返回参数结构体
    public struct CreateDDoSAIResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置DDoS防护的AI防护开关
    @inlinable @discardableResult
    public func createDDoSAI(_ input: CreateDDoSAIRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDDoSAIResponse> {
        self.client.execute(action: "CreateDDoSAI", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置DDoS防护的AI防护开关
    @inlinable @discardableResult
    public func createDDoSAI(_ input: CreateDDoSAIRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDDoSAIResponse {
        try await self.client.execute(action: "CreateDDoSAI", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置DDoS防护的AI防护开关
    @inlinable @discardableResult
    public func createDDoSAI(instanceIdList: [String], dDoSAI: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDDoSAIResponse> {
        self.createDDoSAI(.init(instanceIdList: instanceIdList, dDoSAI: dDoSAI), region: region, logger: logger, on: eventLoop)
    }

    /// 设置DDoS防护的AI防护开关
    @inlinable @discardableResult
    public func createDDoSAI(instanceIdList: [String], dDoSAI: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDDoSAIResponse {
        try await self.createDDoSAI(.init(instanceIdList: instanceIdList, dDoSAI: dDoSAI), region: region, logger: logger, on: eventLoop)
    }
}
