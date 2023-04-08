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

extension Iotvideo {
    /// CreateIotDataType请求参数结构体
    public struct CreateIotDataTypeRequest: TCRequestModel {
        /// 用户自定义数据类型，json格式的字符串
        public let iotDataType: String

        public init(iotDataType: String) {
            self.iotDataType = iotDataType
        }

        enum CodingKeys: String, CodingKey {
            case iotDataType = "IotDataType"
        }
    }

    /// CreateIotDataType返回参数结构体
    public struct CreateIotDataTypeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建自定义物模型数据类型
    ///
    /// 本接口（CreateIotDataType）用于创建自定义物模型数据类型。
    @inlinable @discardableResult
    public func createIotDataType(_ input: CreateIotDataTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIotDataTypeResponse> {
        self.client.execute(action: "CreateIotDataType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自定义物模型数据类型
    ///
    /// 本接口（CreateIotDataType）用于创建自定义物模型数据类型。
    @inlinable @discardableResult
    public func createIotDataType(_ input: CreateIotDataTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIotDataTypeResponse {
        try await self.client.execute(action: "CreateIotDataType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自定义物模型数据类型
    ///
    /// 本接口（CreateIotDataType）用于创建自定义物模型数据类型。
    @inlinable @discardableResult
    public func createIotDataType(iotDataType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIotDataTypeResponse> {
        self.createIotDataType(.init(iotDataType: iotDataType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建自定义物模型数据类型
    ///
    /// 本接口（CreateIotDataType）用于创建自定义物模型数据类型。
    @inlinable @discardableResult
    public func createIotDataType(iotDataType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIotDataTypeResponse {
        try await self.createIotDataType(.init(iotDataType: iotDataType), region: region, logger: logger, on: eventLoop)
    }
}
