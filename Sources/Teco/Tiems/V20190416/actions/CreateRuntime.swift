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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tiems {
    /// CreateRuntime请求参数结构体
    public struct CreateRuntimeRequest: TCRequestModel {
        /// 全局唯一的运行环境名称
        public let name: String

        /// 运行环境镜像地址
        public let image: String

        /// 运行环境框架
        public let framework: String?

        /// 运行环境描述
        public let description: String?

        /// 是否支持健康检查，默认为False
        public let healthCheckOn: Bool?

        public init(name: String, image: String, framework: String? = nil, description: String? = nil, healthCheckOn: Bool? = nil) {
            self.name = name
            self.image = image
            self.framework = framework
            self.description = description
            self.healthCheckOn = healthCheckOn
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case image = "Image"
            case framework = "Framework"
            case description = "Description"
            case healthCheckOn = "HealthCheckOn"
        }
    }

    /// CreateRuntime返回参数结构体
    public struct CreateRuntimeResponse: TCResponseModel {
        /// 运行环境
        public let runtime: Runtime

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case runtime = "Runtime"
            case requestId = "RequestId"
        }
    }

    /// 创建运行环境
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createRuntime(_ input: CreateRuntimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuntimeResponse> {
        fatalError("CreateRuntime is no longer available.")
    }

    /// 创建运行环境
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createRuntime(_ input: CreateRuntimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuntimeResponse {
        fatalError("CreateRuntime is no longer available.")
    }

    /// 创建运行环境
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createRuntime(name: String, image: String, framework: String? = nil, description: String? = nil, healthCheckOn: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuntimeResponse> {
        fatalError("CreateRuntime is no longer available.")
    }

    /// 创建运行环境
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createRuntime(name: String, image: String, framework: String? = nil, description: String? = nil, healthCheckOn: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuntimeResponse {
        fatalError("CreateRuntime is no longer available.")
    }
}
