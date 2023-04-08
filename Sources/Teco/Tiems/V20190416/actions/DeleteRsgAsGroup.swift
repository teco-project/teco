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

extension Tiems {
    /// DeleteRsgAsGroup请求参数结构体
    public struct DeleteRsgAsGroupRequest: TCRequestModel {
        /// 伸缩组 ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DeleteRsgAsGroup返回参数结构体
    public struct DeleteRsgAsGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除资源组的伸缩组
    ///
    /// 伸缩
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable @discardableResult
    public func deleteRsgAsGroup(_ input: DeleteRsgAsGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRsgAsGroupResponse> {
        fatalError("DeleteRsgAsGroup is no longer available.")
    }

    /// 删除资源组的伸缩组
    ///
    /// 伸缩
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable @discardableResult
    public func deleteRsgAsGroup(_ input: DeleteRsgAsGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRsgAsGroupResponse {
        fatalError("DeleteRsgAsGroup is no longer available.")
    }

    /// 删除资源组的伸缩组
    ///
    /// 伸缩
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable @discardableResult
    public func deleteRsgAsGroup(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRsgAsGroupResponse> {
        fatalError("DeleteRsgAsGroup is no longer available.")
    }

    /// 删除资源组的伸缩组
    ///
    /// 伸缩
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable @discardableResult
    public func deleteRsgAsGroup(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRsgAsGroupResponse {
        fatalError("DeleteRsgAsGroup is no longer available.")
    }
}
