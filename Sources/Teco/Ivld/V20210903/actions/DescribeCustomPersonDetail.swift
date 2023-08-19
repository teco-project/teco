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

extension Ivld {
    /// DescribeCustomPersonDetail请求参数结构体
    public struct DescribeCustomPersonDetailRequest: TCRequest {
        /// 自定义人物Id
        public let personId: String

        public init(personId: String) {
            self.personId = personId
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
        }
    }

    /// DescribeCustomPersonDetail返回参数结构体
    public struct DescribeCustomPersonDetailResponse: TCResponse {
        /// 自定义人物信息
        public let personInfo: CustomPersonInfo

        /// 出现该自定义人物的所有分析人物Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskIdSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personInfo = "PersonInfo"
            case taskIdSet = "TaskIdSet"
            case requestId = "RequestId"
        }
    }

    /// 描述自定义人物详细信息
    ///
    /// 描述自定义人物详细信息，包括人物信息与人物信息
    @inlinable
    public func describeCustomPersonDetail(_ input: DescribeCustomPersonDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomPersonDetailResponse> {
        self.client.execute(action: "DescribeCustomPersonDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述自定义人物详细信息
    ///
    /// 描述自定义人物详细信息，包括人物信息与人物信息
    @inlinable
    public func describeCustomPersonDetail(_ input: DescribeCustomPersonDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomPersonDetailResponse {
        try await self.client.execute(action: "DescribeCustomPersonDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述自定义人物详细信息
    ///
    /// 描述自定义人物详细信息，包括人物信息与人物信息
    @inlinable
    public func describeCustomPersonDetail(personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomPersonDetailResponse> {
        self.describeCustomPersonDetail(.init(personId: personId), region: region, logger: logger, on: eventLoop)
    }

    /// 描述自定义人物详细信息
    ///
    /// 描述自定义人物详细信息，包括人物信息与人物信息
    @inlinable
    public func describeCustomPersonDetail(personId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomPersonDetailResponse {
        try await self.describeCustomPersonDetail(.init(personId: personId), region: region, logger: logger, on: eventLoop)
    }
}
