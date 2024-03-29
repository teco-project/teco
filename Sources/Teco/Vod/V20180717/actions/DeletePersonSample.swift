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

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// DeletePersonSample请求参数结构体
    public struct DeletePersonSampleRequest: TCRequest {
        /// 素材 ID。
        public let personId: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        public init(personId: String, subAppId: UInt64? = nil) {
            self.personId = personId
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case subAppId = "SubAppId"
        }
    }

    /// DeletePersonSample返回参数结构体
    public struct DeletePersonSampleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除素材样本
    ///
    /// 该接口用于根据人物 ID，删除素材样本。
    @inlinable @discardableResult
    public func deletePersonSample(_ input: DeletePersonSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonSampleResponse> {
        self.client.execute(action: "DeletePersonSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除素材样本
    ///
    /// 该接口用于根据人物 ID，删除素材样本。
    @inlinable @discardableResult
    public func deletePersonSample(_ input: DeletePersonSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonSampleResponse {
        try await self.client.execute(action: "DeletePersonSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除素材样本
    ///
    /// 该接口用于根据人物 ID，删除素材样本。
    @inlinable @discardableResult
    public func deletePersonSample(personId: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonSampleResponse> {
        self.deletePersonSample(.init(personId: personId, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除素材样本
    ///
    /// 该接口用于根据人物 ID，删除素材样本。
    @inlinable @discardableResult
    public func deletePersonSample(personId: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonSampleResponse {
        try await self.deletePersonSample(.init(personId: personId, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
