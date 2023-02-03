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

extension Tcm {
    /// DescribeAccessLogConfig请求参数结构体
    public struct DescribeAccessLogConfigRequest: TCRequestModel {
        /// mesh名字
        public let meshId: String

        public init(meshId: String) {
            self.meshId = meshId
        }

        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
        }
    }

    /// DescribeAccessLogConfig返回参数结构体
    public struct DescribeAccessLogConfigResponse: TCResponseModel {
        /// 访问日志输出路径。默认 /dev/stdout
        public let file: String

        /// 访问日志的格式。
        public let format: String

        /// 访问日志输出编码，可取值为 "TEXT" 或 "JSON"，默认 TEXT"
        public let encoding: String

        /// 选中的范围
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let selectedRange: SelectedRange?

        /// 采用的模板，可取值为"istio" 或 "trace"，默认为"istio"
        public let template: String

        /// 腾讯云日志服务相关参数
        public let cls: CLS

        /// GRPC第三方服务器地址
        public let address: String

        /// 是否启用GRPC第三方服务器
        public let enableServer: Bool

        /// 是否启用标准输出
        public let enableStdout: Bool

        /// 是否启用访问日志采集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enable: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case file = "File"
            case format = "Format"
            case encoding = "Encoding"
            case selectedRange = "SelectedRange"
            case template = "Template"
            case cls = "CLS"
            case address = "Address"
            case enableServer = "EnableServer"
            case enableStdout = "EnableStdout"
            case enable = "Enable"
            case requestId = "RequestId"
        }
    }

    /// 获取AccessLog配置
    @inlinable
    public func describeAccessLogConfig(_ input: DescribeAccessLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessLogConfigResponse> {
        self.client.execute(action: "DescribeAccessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取AccessLog配置
    @inlinable
    public func describeAccessLogConfig(_ input: DescribeAccessLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessLogConfigResponse {
        try await self.client.execute(action: "DescribeAccessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取AccessLog配置
    @inlinable
    public func describeAccessLogConfig(meshId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessLogConfigResponse> {
        let input = DescribeAccessLogConfigRequest(meshId: meshId)
        return self.client.execute(action: "DescribeAccessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取AccessLog配置
    @inlinable
    public func describeAccessLogConfig(meshId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessLogConfigResponse {
        let input = DescribeAccessLogConfigRequest(meshId: meshId)
        return try await self.client.execute(action: "DescribeAccessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
