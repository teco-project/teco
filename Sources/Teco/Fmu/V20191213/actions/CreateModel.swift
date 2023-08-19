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

extension Fmu {
    /// CreateModel请求参数结构体
    public struct CreateModelRequest: TCRequest {
        /// 图片base64数据，用于试唇色，要求必须是LUT 格式的cube文件转换成512*512的PNG图片。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。了解 [cube文件转png图片小工具](http://yyb.gtimg.com/aiplat/static/qcloud-cube-to-png.html)。
        public let lutFile: String

        /// 文件描述信息，可用于备注。
        public let description: String?

        public init(lutFile: String, description: String? = nil) {
            self.lutFile = lutFile
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case lutFile = "LUTFile"
            case description = "Description"
        }
    }

    /// CreateModel返回参数结构体
    public struct CreateModelResponse: TCResponse {
        /// 唇色素材ID。
        public let modelId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case requestId = "RequestId"
        }
    }

    /// 上传唇色素材
    ///
    /// 在使用LUT素材的modelid实现试唇色前，您需要先上传 LUT 格式的cube文件注册唇色ID。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。
    ///
    /// 注：您也可以直接使用 [试唇色接口](https://cloud.tencent.com/document/product/1172/40706)，通过输入RGBA模型数值的方式指定唇色，更简单易用。
    @inlinable
    public func createModel(_ input: CreateModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModelResponse> {
        self.client.execute(action: "CreateModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传唇色素材
    ///
    /// 在使用LUT素材的modelid实现试唇色前，您需要先上传 LUT 格式的cube文件注册唇色ID。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。
    ///
    /// 注：您也可以直接使用 [试唇色接口](https://cloud.tencent.com/document/product/1172/40706)，通过输入RGBA模型数值的方式指定唇色，更简单易用。
    @inlinable
    public func createModel(_ input: CreateModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModelResponse {
        try await self.client.execute(action: "CreateModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传唇色素材
    ///
    /// 在使用LUT素材的modelid实现试唇色前，您需要先上传 LUT 格式的cube文件注册唇色ID。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。
    ///
    /// 注：您也可以直接使用 [试唇色接口](https://cloud.tencent.com/document/product/1172/40706)，通过输入RGBA模型数值的方式指定唇色，更简单易用。
    @inlinable
    public func createModel(lutFile: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModelResponse> {
        self.createModel(.init(lutFile: lutFile, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 上传唇色素材
    ///
    /// 在使用LUT素材的modelid实现试唇色前，您需要先上传 LUT 格式的cube文件注册唇色ID。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。
    ///
    /// 注：您也可以直接使用 [试唇色接口](https://cloud.tencent.com/document/product/1172/40706)，通过输入RGBA模型数值的方式指定唇色，更简单易用。
    @inlinable
    public func createModel(lutFile: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModelResponse {
        try await self.createModel(.init(lutFile: lutFile, description: description), region: region, logger: logger, on: eventLoop)
    }
}
