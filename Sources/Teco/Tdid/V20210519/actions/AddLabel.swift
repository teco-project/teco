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
    /// AddLabel请求参数结构体
    public struct AddLabelRequest: TCRequestModel {
        /// 标签ID
        public let labelId: UInt64

        /// tdid
        public let did: String

        public init(labelId: UInt64, did: String) {
            self.labelId = labelId
            self.did = did
        }

        enum CodingKeys: String, CodingKey {
            case labelId = "LabelId"
            case did = "Did"
        }
    }

    /// AddLabel返回参数结构体
    public struct AddLabelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// DID添加标签
    @inlinable @discardableResult
    public func addLabel(_ input: AddLabelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddLabelResponse> {
        self.client.execute(action: "AddLabel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DID添加标签
    @inlinable @discardableResult
    public func addLabel(_ input: AddLabelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLabelResponse {
        try await self.client.execute(action: "AddLabel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DID添加标签
    @inlinable @discardableResult
    public func addLabel(labelId: UInt64, did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddLabelResponse> {
        self.addLabel(AddLabelRequest(labelId: labelId, did: did), region: region, logger: logger, on: eventLoop)
    }

    /// DID添加标签
    @inlinable @discardableResult
    public func addLabel(labelId: UInt64, did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLabelResponse {
        try await self.addLabel(AddLabelRequest(labelId: labelId, did: did), region: region, logger: logger, on: eventLoop)
    }
}
