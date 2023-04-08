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

extension Tdid {
    /// GetDidDocument请求参数结构体
    public struct GetDidDocumentRequest: TCRequestModel {
        /// tdid
        public let did: String

        public init(did: String) {
            self.did = did
        }

        enum CodingKeys: String, CodingKey {
            case did = "Did"
        }
    }

    /// GetDidDocument返回参数结构体
    public struct GetDidDocumentResponse: TCResponseModel {
        /// 名称
        public let name: String

        /// DID文档
        public let document: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case document = "Document"
            case requestId = "RequestId"
        }
    }

    /// 查看DID文档
    @inlinable
    public func getDidDocument(_ input: GetDidDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidDocumentResponse> {
        self.client.execute(action: "GetDidDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看DID文档
    @inlinable
    public func getDidDocument(_ input: GetDidDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidDocumentResponse {
        try await self.client.execute(action: "GetDidDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看DID文档
    @inlinable
    public func getDidDocument(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidDocumentResponse> {
        self.getDidDocument(.init(did: did), region: region, logger: logger, on: eventLoop)
    }

    /// 查看DID文档
    @inlinable
    public func getDidDocument(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidDocumentResponse {
        try await self.getDidDocument(.init(did: did), region: region, logger: logger, on: eventLoop)
    }
}
