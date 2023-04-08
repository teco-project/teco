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

extension Tcr {
    /// ModifyInstance请求参数结构体
    public struct ModifyInstanceRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String

        /// 实例的规格
        public let registryType: String

        public init(registryId: String, registryType: String) {
            self.registryId = registryId
            self.registryType = registryType
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case registryType = "RegistryType"
        }
    }

    /// ModifyInstance返回参数结构体
    public struct ModifyInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新实例信息
    @inlinable @discardableResult
    public func modifyInstance(_ input: ModifyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceResponse> {
        self.client.execute(action: "ModifyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新实例信息
    @inlinable @discardableResult
    public func modifyInstance(_ input: ModifyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceResponse {
        try await self.client.execute(action: "ModifyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新实例信息
    @inlinable @discardableResult
    public func modifyInstance(registryId: String, registryType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceResponse> {
        self.modifyInstance(.init(registryId: registryId, registryType: registryType), region: region, logger: logger, on: eventLoop)
    }

    /// 更新实例信息
    @inlinable @discardableResult
    public func modifyInstance(registryId: String, registryType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceResponse {
        try await self.modifyInstance(.init(registryId: registryId, registryType: registryType), region: region, logger: logger, on: eventLoop)
    }
}
