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

extension Wss {
    /// DeleteCert请求参数结构体
    public struct DeleteCertRequest: TCRequestModel {
        /// 证书 ID，即通过 GetList 拿到的证书列表的 ID 字段。
        public let id: String

        /// 模块名称，应填 ssl。
        public let moduleType: String

        public init(id: String, moduleType: String) {
            self.id = id
            self.moduleType = moduleType
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case moduleType = "ModuleType"
        }
    }

    /// DeleteCert返回参数结构体
    public struct DeleteCertResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCert）用于删除证书。
    @inlinable @discardableResult
    public func deleteCert(_ input: DeleteCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCertResponse> {
        self.client.execute(action: "DeleteCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCert）用于删除证书。
    @inlinable @discardableResult
    public func deleteCert(_ input: DeleteCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCertResponse {
        try await self.client.execute(action: "DeleteCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCert）用于删除证书。
    @inlinable @discardableResult
    public func deleteCert(id: String, moduleType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCertResponse> {
        self.deleteCert(DeleteCertRequest(id: id, moduleType: moduleType), region: region, logger: logger, on: eventLoop)
    }

    /// 删除证书
    ///
    /// 本接口（DeleteCert）用于删除证书。
    @inlinable @discardableResult
    public func deleteCert(id: String, moduleType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCertResponse {
        try await self.deleteCert(DeleteCertRequest(id: id, moduleType: moduleType), region: region, logger: logger, on: eventLoop)
    }
}
