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

extension Vpc {
    /// AcceptAttachCcnInstances请求参数结构体
    public struct AcceptAttachCcnInstancesRequest: TCRequest {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// 接受关联实例列表。
        public let instances: [CcnInstance]

        public init(ccnId: String, instances: [CcnInstance]) {
            self.ccnId = ccnId
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case instances = "Instances"
        }
    }

    /// AcceptAttachCcnInstances返回参数结构体
    public struct AcceptAttachCcnInstancesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 云联网接受关联实例
    ///
    /// 本接口（AcceptAttachCcnInstances）用于跨账号关联实例时，云联网所有者接受并同意关联操作。
    @inlinable @discardableResult
    public func acceptAttachCcnInstances(_ input: AcceptAttachCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptAttachCcnInstancesResponse> {
        self.client.execute(action: "AcceptAttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云联网接受关联实例
    ///
    /// 本接口（AcceptAttachCcnInstances）用于跨账号关联实例时，云联网所有者接受并同意关联操作。
    @inlinable @discardableResult
    public func acceptAttachCcnInstances(_ input: AcceptAttachCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptAttachCcnInstancesResponse {
        try await self.client.execute(action: "AcceptAttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云联网接受关联实例
    ///
    /// 本接口（AcceptAttachCcnInstances）用于跨账号关联实例时，云联网所有者接受并同意关联操作。
    @inlinable @discardableResult
    public func acceptAttachCcnInstances(ccnId: String, instances: [CcnInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptAttachCcnInstancesResponse> {
        self.acceptAttachCcnInstances(.init(ccnId: ccnId, instances: instances), region: region, logger: logger, on: eventLoop)
    }

    /// 云联网接受关联实例
    ///
    /// 本接口（AcceptAttachCcnInstances）用于跨账号关联实例时，云联网所有者接受并同意关联操作。
    @inlinable @discardableResult
    public func acceptAttachCcnInstances(ccnId: String, instances: [CcnInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptAttachCcnInstancesResponse {
        try await self.acceptAttachCcnInstances(.init(ccnId: ccnId, instances: instances), region: region, logger: logger, on: eventLoop)
    }
}
