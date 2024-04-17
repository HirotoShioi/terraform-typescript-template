import { APIGatewayProxyEventV2, ProxyResult } from 'aws-lambda'

export const handler = async (
  event: APIGatewayProxyEventV2
): Promise<ProxyResult> => {
  return {
    statusCode: 200,
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      message: 'Hello World!',
      input: event,
    }),
  }
}
