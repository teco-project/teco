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

extension Scf {
    /// CopyFunction请求参数结构体
    public struct CopyFunctionRequest: TCRequestModel {
        /// 要复制的函数的名称
        public let functionName: String

        /// 新函数的名称
        public let newFunctionName: String

        /// 要复制的函数所在的命名空间，默认为default
        public let namespace: String?

        /// 将函数复制到的命名空间，默认为default
        public let targetNamespace: String?

        /// 新函数的描述
        public let description: String?

        /// 要将函数复制到的地域，不填则默认为当前地域
        public let targetRegion: String?

        /// 如果目标Namespace下已有同名函数，是否覆盖，默认为否
        /// （注意：如果选择覆盖，会导致同名函数被删除，请慎重操作）
        /// TRUE：覆盖同名函数
        /// FALSE：不覆盖同名函数
        public let override: Bool?

        /// 是否复制函数的属性，包括环境变量、内存、超时、函数描述、标签、VPC等，默认为是。
        /// TRUE：复制函数配置
        /// FALSE：不复制函数配置
        public let copyConfiguration: Bool?

        public init(functionName: String, newFunctionName: String, namespace: String? = nil, targetNamespace: String? = nil, description: String? = nil, targetRegion: String? = nil, override: Bool? = nil, copyConfiguration: Bool? = nil) {
            self.functionName = functionName
            self.newFunctionName = newFunctionName
            self.namespace = namespace
            self.targetNamespace = targetNamespace
            self.description = description
            self.targetRegion = targetRegion
            self.override = override
            self.copyConfiguration = copyConfiguration
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case newFunctionName = "NewFunctionName"
            case namespace = "Namespace"
            case targetNamespace = "TargetNamespace"
            case description = "Description"
            case targetRegion = "TargetRegion"
            case override = "Override"
            case copyConfiguration = "CopyConfiguration"
        }
    }

    /// CopyFunction返回参数结构体
    public struct CopyFunctionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 复制函数
    ///
    /// 复制一个函数，您可以选择将复制出的新函数放置在特定的Region和Namespace。
    /// 注：本接口**不会**复制函数的以下对象或属性：
    /// 1. 函数的触发器
    /// 2. 除了$LATEST以外的其它版本
    /// 3. 函数配置的日志投递到的CLS目标。
    ///
    /// 如有需要，您可以在复制后手动配置新函数。
    @inlinable @discardableResult
    public func copyFunction(_ input: CopyFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyFunctionResponse> {
        self.client.execute(action: "CopyFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制函数
    ///
    /// 复制一个函数，您可以选择将复制出的新函数放置在特定的Region和Namespace。
    /// 注：本接口**不会**复制函数的以下对象或属性：
    /// 1. 函数的触发器
    /// 2. 除了$LATEST以外的其它版本
    /// 3. 函数配置的日志投递到的CLS目标。
    ///
    /// 如有需要，您可以在复制后手动配置新函数。
    @inlinable @discardableResult
    public func copyFunction(_ input: CopyFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyFunctionResponse {
        try await self.client.execute(action: "CopyFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制函数
    ///
    /// 复制一个函数，您可以选择将复制出的新函数放置在特定的Region和Namespace。
    /// 注：本接口**不会**复制函数的以下对象或属性：
    /// 1. 函数的触发器
    /// 2. 除了$LATEST以外的其它版本
    /// 3. 函数配置的日志投递到的CLS目标。
    ///
    /// 如有需要，您可以在复制后手动配置新函数。
    @inlinable @discardableResult
    public func copyFunction(functionName: String, newFunctionName: String, namespace: String? = nil, targetNamespace: String? = nil, description: String? = nil, targetRegion: String? = nil, override: Bool? = nil, copyConfiguration: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyFunctionResponse> {
        let input = CopyFunctionRequest(functionName: functionName, newFunctionName: newFunctionName, namespace: namespace, targetNamespace: targetNamespace, description: description, targetRegion: targetRegion, override: override, copyConfiguration: copyConfiguration)
        return self.client.execute(action: "CopyFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制函数
    ///
    /// 复制一个函数，您可以选择将复制出的新函数放置在特定的Region和Namespace。
    /// 注：本接口**不会**复制函数的以下对象或属性：
    /// 1. 函数的触发器
    /// 2. 除了$LATEST以外的其它版本
    /// 3. 函数配置的日志投递到的CLS目标。
    ///
    /// 如有需要，您可以在复制后手动配置新函数。
    @inlinable @discardableResult
    public func copyFunction(functionName: String, newFunctionName: String, namespace: String? = nil, targetNamespace: String? = nil, description: String? = nil, targetRegion: String? = nil, override: Bool? = nil, copyConfiguration: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyFunctionResponse {
        let input = CopyFunctionRequest(functionName: functionName, newFunctionName: newFunctionName, namespace: namespace, targetNamespace: targetNamespace, description: description, targetRegion: targetRegion, override: override, copyConfiguration: copyConfiguration)
        return try await self.client.execute(action: "CopyFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
