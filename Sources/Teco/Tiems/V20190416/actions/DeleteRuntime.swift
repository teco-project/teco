//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiems {
    /// DeleteRuntime请求参数结构体
    public struct DeleteRuntimeRequest: TCRequestModel {
        /// 要删除的Runtime名
        public let runtime: String

        public init(runtime: String) {
            self.runtime = runtime
        }

        enum CodingKeys: String, CodingKey {
            case runtime = "Runtime"
        }
    }

    /// DeleteRuntime返回参数结构体
    public struct DeleteRuntimeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除运行环境
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除运行环境
    @inlinable
    public func deleteRuntime(_ input: DeleteRuntimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRuntimeResponse > {
        self.client.execute(action: "DeleteRuntime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除运行环境
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除运行环境
    @inlinable
    public func deleteRuntime(_ input: DeleteRuntimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuntimeResponse {
        try await self.client.execute(action: "DeleteRuntime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除运行环境
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除运行环境
    @inlinable
    public func deleteRuntime(runtime: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRuntimeResponse > {
        self.deleteRuntime(DeleteRuntimeRequest(runtime: runtime), logger: logger, on: eventLoop)
    }

    /// 删除运行环境
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除运行环境
    @inlinable
    public func deleteRuntime(runtime: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuntimeResponse {
        try await self.deleteRuntime(DeleteRuntimeRequest(runtime: runtime), logger: logger, on: eventLoop)
    }
}
